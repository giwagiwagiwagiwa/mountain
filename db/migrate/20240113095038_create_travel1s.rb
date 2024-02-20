class CreateTravel1s < ActiveRecord::Migration[6.1]
  def change
    create_table :travel1s do |t|
      t.text :body

      t.timestamps
    end
  end
end
