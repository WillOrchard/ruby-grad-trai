require "application_system_test_case"

class EntriesTest < ApplicationSystemTestCase
      test "test error message for blank entry" do
        user = users(:one)
        visit login_path

        fill_in 'Username', with: user.username
        fill_in 'Password', with: 'password'
        sleep 1
        click_button 'Log In'

        visit new_entry_url

        click_on "Create Entry"

        assert_text "Error - 'Name' field cannot be empty"
        assert_text "Error - 'Link' field cannot be empty"
      end
    end