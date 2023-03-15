require "application_system_test_case"

class EntriesTest < ApplicationSystemTestCase
    test "create a new entry" do
        user = users(:one)
        visit login_path

        fill_in 'Username', with: user.username
        fill_in 'Password', with: 'password'
        sleep 1
        click_button 'Log In'
        
        visit new_entry_url
    
        fill_in "Name", with: "New Journal Entry"
        fill_in "Link", with: "This is a new journal entry link"
        first('#select_id option', minimum: 1).select_option
        click_on "Create Entry"
        visit solirius_resources_path

        assert_text "New Journal Entry"
      end
    end