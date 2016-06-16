class AddDescriptorsToEquipmentCategories < ActiveRecord::Migration

 def up
    add_column :equipment_categories, :descriptors, :string
  end

  def down
    remove_column :equipment_categories, :descriptors, :string
  end
end
