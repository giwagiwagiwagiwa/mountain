class AddExpense2ToTrains < ActiveRecord::Migration[6.1]
  def change
    add_column :trains, :expense2, :string
  end
end
