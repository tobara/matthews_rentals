class CreateEquipmentRentals < ActiveRecord::Migration
  def change
    create_table :equipment_rentals do |t|
      t.belongs_to :equipment_category, null: false
      t.string :equipment_name, null: false
      t.string :make, null: false
      t.string :model, null: false, unique: true
      t.text :equipment_description, null: false
      t.string :li_one, null: false
      t.string :li_two
      t.string :li_three
      t.string :category_index_img, null: false
      t.string :equipment_img_one, null: false
      t.string :equipment_img_two, null: false
      t.string :equipment_img_three, null: false
      t.string :hourly_rate
      t.string :daily_rate, null: false
      t.string :weekly_rate, null: false

      t.timestamps null: false
    end
    add_index :equipment_rentals, :equipment_name
  end
end

