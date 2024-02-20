class AddTime2ToTrains < ActiveRecord::Migration[6.1]
  def change
    add_column :trains, :time2, :string
  end
end
