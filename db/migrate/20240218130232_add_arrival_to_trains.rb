class AddArrivalToTrains < ActiveRecord::Migration[6.1]
  def change
    add_column :trains, :arrival, :string
  end
end
