require 'rails_helper'

RSpec.feature "Sign up", type: :feature do
  scenario "Can navigate to sign up page" do
    visit "/posts"
    click_on "Sign up"
    expect(page).to have_content("Enter details")
  end

  scenario "Can enter details and sign up" do
    visit "/posts"
    click_on "Sign up"
    fill_in "Email", with: "me@example.com"
    fill_in 'Username', with: "MyUsername"
    fill_in 'Password', with: "12345"
    click_button "Create User"
    expect(page).to have_content("User was successfully created")
  end
end
