class AddUserIdToTrains < ActiveRecord::Migration[6.1]
  def change
    add_column :trains, :user_id, :integer
  end
end
