require "application_system_test_case"

class EntriesTest < ApplicationSystemTestCase
    test "edit an existing entry" do
        # Visit the home page
        visit entries_url
    
        # Find the first entry and click the edit link
        entry = page.first(".entry")
        entry.click_link "Edit"
    
        # Fill in the form with new data and submit it
        fill_in "Name", with: "Updated Journal Entry"
        fill_in "Link", with: "This is an updated journal entry link"
        click_on "Update Entry"
    
        # Verify that the updated entry is displayed on the home page
        assert_text "Updated Journal Entry"
      end
    end