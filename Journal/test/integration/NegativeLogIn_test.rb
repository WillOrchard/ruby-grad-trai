require 'application_system_test_case'

class LoginTest < ApplicationSystemTestCase
  test 'log in with invalid credentials' do
    user = users(:one)
    visit login_path

    fill_in 'Username', with: user.username
    fill_in 'Password', with: 'passwor'
    sleep 1
    click_button 'Log In'

    assert_text "Invalid username or password."
  end
end