class AddDetailToTrains < ActiveRecord::Migration[6.1]
  def change
    add_column :trains, :detail, :string
  end
end
