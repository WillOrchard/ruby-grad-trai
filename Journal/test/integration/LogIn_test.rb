require 'application_system_test_case'

class LoginTest < ApplicationSystemTestCase
  test 'log in with valid credentials' do
    user = users(:one)
    visit login_path

    fill_in 'Username', with: user.username
    fill_in 'Password', with: 'password'
    sleep 1
    click_button 'Log In'

    assert_current_path root_path
  end
end