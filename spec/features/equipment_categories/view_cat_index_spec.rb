require 'rails_helper'
require 'spec_helper'


feature "The rental categories index page: " do
  scenario "visitor can see list of rental categories on index page" do
    visit equipment_categories_path

    expect(page).to have_content 'Trailers'
    expect(page).to have_content 'Air Tools & Compressors'
    expect(page).to_not have_content 'Concrete Saw'
  end
end
