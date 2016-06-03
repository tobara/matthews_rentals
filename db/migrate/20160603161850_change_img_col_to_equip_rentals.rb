class ChangeImgColToEquipRentals < ActiveRecord::Migration
  def up
    change_column_default :equipment_rentals, :equipment_img_two, from: false, to: true
    change_column_default :equipment_rentals, :equipment_img_three, from: false, to: true
  end
  def down
    change_column_default :equipment_rentals, :equipment_img_two, from: true, to: false
    change_column_default :equipment_rentals, :equipment_img_three, from: true, to: false
  end
end
