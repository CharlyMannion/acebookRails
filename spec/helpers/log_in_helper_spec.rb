def log_in_successfully
  visit "/posts"
  click_on "Sign Up"
  fill_in "Email", with: "me@example.com"
  fill_in 'Username', with: "MyUsername"
  fill_in 'Password', with: "12345"
  click_button "Create User"
  click_on "Log In"
  fill_in "Email", with: "me@example.com"
  fill_in 'Password', with: "12345"
  click_button "Login"
end
