class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.references :driver, null: false, foreign_key: true
      t.string :brand_name
      t.string :downforce
      t.string :topspeed

      t.timestamps
    end
  end
end
