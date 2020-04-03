require 'rails_helper'

RSpec.feature "Sign up", type: :feature do
  scenario "Can navigate to sign in page" do
    visit "/posts"
    click_on "Sign up"
    expect(page).to have_content("Enter details")
  end
end
