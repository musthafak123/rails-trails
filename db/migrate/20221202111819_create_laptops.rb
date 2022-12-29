class CreateLaptops < ActiveRecord::Migration[7.0]
  def change
    create_table :laptops do |t|
      t.string :name
      t.string :price
      t.string :brand
      t.string :offfer

      t.timestamps
    end
  end
end
