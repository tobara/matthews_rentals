class CreateEquipmentCategories < ActiveRecord::Migration
  def change
    create_table :equipment_categories do |t|
      t.string :category, null: false
      t.string :cat_img, null: false

      t.timestamps null: false
    end
  end
end
