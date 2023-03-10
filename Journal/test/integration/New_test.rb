require "application_system_test_case"

class EntriesTest < ApplicationSystemTestCase
    test "create a new entry" do
        # Visit the new entry page
        visit new_entry_url
    
        # Fill in the form with valid data
        fill_in "Name", with: "New Journal Entry"
        fill_in "Link", with: "This is a new journal entry link"
        click_on "Create Entry"
    
        # Verify that the new entry is displayed on the home page
        assert_text "New Journal Entry"
      end
    end