require "rails_helper"
require "spec_helper"

feature 'user views category', %{
  A user or vistor
  I want to view rental
  categories
  Acceptance Criteria
  [] I can view rental categories
} do


  scenario "a user can view reviews" do
    visit equipment_categories_path
    first(:link, 'Concrete').click
    expect(page).to have_content 'Concrete Saw, 16” Walk Behind'
  end
end
