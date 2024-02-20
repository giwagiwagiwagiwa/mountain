class TrainsController < ApplicationController
    before_action :authenticate_user!

    def index
      @trains = Train.all
    end

    def search
      if params[:search1].blank?
        @trains = Train.none
      elsif params[:search2].blank?
          @trains = Train.none
      else
        search1 = "%#{params[:search1]}%"
       
        search2 = "%#{params[:search2]}%"
        @trains = Train.where("departure LIKE ? AND arrival LIKE ?", search1, search2)
      end
    end

    def new
        @trains = Train.new
      end

      def create
        train = Train.new(train_params)

        train.user_id = current_user.id

        if train.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end

      def show
        @trains = Train.find(params[:id])
        @comments = @trains.comments
        @comment = Comment.new
      end
    
      def edit
        @trains = Train.find(params[:id])

        def update
            train = Train.find(params[:id])
            if train.update(train_params)
              redirect_to :action => "show", :id => train.id
            else
              redirect_to :action => "new"
            end
          end
      end

      def destroy
        train = Train.find(params[:id])
        train.destroy
        redirect_to action: :index
      end

      private
      def train_params
        params.require(:train).permit(:departure,:arrival,:detail,:expense2,:time2,:other2)
      end
end
