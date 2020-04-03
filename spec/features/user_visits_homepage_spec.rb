require 'rails_helper'

RSpec.feature "Homepage", type: :feature do
  scenario "Can visit homepage and see options" do
    visit "/posts"
    expect(page).to have_content("Welcome to Acebook!")
  end
end
