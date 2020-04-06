require 'rails_helper'

def sign_in_successfully
  visit "/posts"
  click_on "Sign up"
  fill_in "Email", with: "me@example.com"
  fill_in 'Username', with: "MyUsername"
  fill_in 'Password', with: "12345"
  click_button "Create User"
end
