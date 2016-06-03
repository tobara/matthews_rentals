class AddMoreImgsToEquipRentals < ActiveRecord::Migration
  def change
    add_column :equipment_rentals, :equipment_img_four, :string
    add_column :equipment_rentals, :equipment_img_five, :string
    add_column :equipment_rentals, :equipment_img_six, :string
  end
end
