  class EquipmentRental < ActiveRecord::Base
    belongs_to :equipment_category

    validates :equipment_name, presence: true
    validates :make, presence: true
    validates :model, presence: true, uniqueness: true
    validates :equipment_description, presence: true
    validates :li_one, presence: true
    validates :category_index_img, presence: true, uniqueness: true
    validates :equipment_img_one, presence: true
    validates :equipment_img_two, presence: true
    validates :equipment_img_three, presence: true
    validates :daily_rate, presence: true
    validates :weekly_rate, presence: true
end

