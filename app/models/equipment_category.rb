class EquipmentCategory < ActiveRecord::Base
  has_many :equipment_rentals

  validates :category, presence: true, uniqueness: true
  validates :cat_img, presence: true, uniqueness: true
end
