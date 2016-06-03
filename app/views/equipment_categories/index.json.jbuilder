json.array!(@equipment_categories) do |equipment_category|
  json.extract! equipment_category, :id
  json.url equipment_category_url(equipment_category, format: :json)
end
