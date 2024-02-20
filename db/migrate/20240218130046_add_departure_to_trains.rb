class AddDepartureToTrains < ActiveRecord::Migration[6.1]
  def change
    add_column :trains, :departure, :string
  end
end
