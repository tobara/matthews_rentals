require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'concrete.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = EquipmentRental.new
  t.equipment_name = row['equipment_name']
  t.make = row['make']
  t.model = row['model']
  t.equipment_description = row['equipment_description']
  t.li_one = row['li_one']
  t.li_two = row['li_two']
  t.li_three = row['li_three']
  t.category_index_img = row['category_index_img']
  t.equipment_img_one = row['equipment_img_one']
  t.equipment_img_two = row['equipment_img_two']
  t.equipment_img_three = row['equipment_img_three']
  t.equipment_img_four = row['equipment_img_four']
  t.equipment_img_five = row['equipment_img_five']
  t.equipment_img_six = row['equipment_img_six']
  t.hourly_rate = row['hourly_rate']
  t.daily_rate = row ['daily_rate']
  t.weekly_rate = row ['weekly_rate']
  t.equipment_category_id = row ['equipment_category_id']
  t.save
end

puts "There are now #{EquipmentRental.count} rows in the transactions table"

