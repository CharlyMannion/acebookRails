require 'rails_helper'

RSpec.feature "Sign in", type: :feature do
  scenario "Can navigate to sign in page" do
    sign_in_successfully

    click_on 'Log In'
    expect(page).to have_content("Email")
  end
end
