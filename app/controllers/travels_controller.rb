class TravelController < ApplicationController
    def index
    end

    def new
        @travel = Travel.new
      end
end
