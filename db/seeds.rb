require 'csv'

EquipmentCategory.create([{ category: 'Air Tools & Compressors', cat_img:'compressor.jpg', descriptors: 'Compressors, Air Tools and Accessories' }])

EquipmentCategory.create([{ category: 'Automotive', cat_img:'cat_charger.jpg', descriptors: 'Automotive Tools & Accessories' }])

EquipmentCategory.create([{ category: 'Compaction', cat_img:'compactor.jpg', descriptors: 'Plate Compactors & Rammers' }])

EquipmentCategory.create([{ category: 'Concrete ', cat_img:'concrete_saw.jpg', descriptors: 'Concrete Mixers and Saws' }])

EquipmentCategory.create([{ category: 'Drills & Demolition', cat_img:'demo-drill.jpg', descriptors: 'Jack Hammers, Drills & Hammer Drills' }])


EquipmentCategory.create([{ category: 'Earth Moving', cat_img:'tractor-backhoe.jpg', descriptors: 'Backhoes, Loaders & Excavators' }])


EquipmentCategory.create([{ category: 'Fastening Tools', cat_img:'nail-gun-2.jpg', descriptors: 'Air Nailers & Accessories' }])

EquipmentCategory.create([{ category: 'Flooring & Tile', cat_img:'tile-saw.jpg', descriptors: 'Flooring Installation and Refinishing' }])

EquipmentCategory.create([{ category: 'Generators & Fans', cat_img:'Honda-Generator.jpg', descriptors: 'Air Movers and Portable Generators' }])

EquipmentCategory.create([{ category: 'Hoists & Jacks', cat_img:'engine-hoist.jpg', descriptors: 'Engine Lifts, Bottle Jacks and Stands' }])

EquipmentCategory.create([{ category: 'Lawn & Landscape', cat_img:'tiller_husqvarna_2.jpg', descriptors: 'Chippers, Tillers, Mowers & More' }])

EquipmentCategory.create([{ category: 'Material Handling & Moving', cat_img:'pallet-jack.jpg', descriptors: 'Dollies, Pallet Trucks and Forklifts' }])

EquipmentCategory.create([{ category: 'Pumps & Pressure Washers', cat_img:'generac-pressure-washer.png', descriptors: 'Washers, Pumps & Accessories' }])


EquipmentCategory.create([{ category: 'Saws & Woodworking', cat_img:'miter-saw.jpg', descriptors: 'Nailers & Portable Saws' }])

EquipmentCategory.create([{ category: 'Trailers', cat_img:'dump-trailer-2.jpeg', descriptors: 'Truck Equipment & Material Transport' }])


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

puts "There are now #{EquipmentRental.count} rows in the concrete table"


csv_text = File.read(Rails.root.join('lib', 'seeds', 'drills.csv'))
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

puts "There are now #{EquipmentRental.count} rows in the drills table"

csv_text = File.read(Rails.root.join('lib', 'seeds', 'Remaining.csv'))
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

puts "There are now #{EquipmentRental.count} rows in the remaining table"

csv_text = File.read(Rails.root.join('lib', 'seeds', 'lawncare.csv'))
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

puts "There are now #{EquipmentRental.count} rows in the remaining table"

csv_text = File.read(Rails.root.join('lib', 'seeds', 'book1.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'windows-1251:utf-8')
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

puts "There are now #{EquipmentRental.count} rows in the remaining table"

csv_text = File.read(Rails.root.join('lib', 'seeds', 'real_last.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'windows-1251:utf-8')
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
  t.hourly_rate = row['hourly_rate']
  t.daily_rate = row ['daily_rate']
  t.weekly_rate = row ['weekly_rate']
  t.equipment_category_id = row ['equipment_category_id']
  t.save
end

puts "There are now #{EquipmentRental.count} rows in the remaining table"






