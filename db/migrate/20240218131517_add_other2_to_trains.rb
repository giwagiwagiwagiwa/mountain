class AddOther2ToTrains < ActiveRecord::Migration[6.1]
  def change
    add_column :trains, :other2, :string
  end
end
