require "application_system_test_case"

class EntriesTest < ApplicationSystemTestCase
    test "delete an existing entry" do
        # Visit the home page
        visit entries_url
    
        # Find the first entry and click the delete link
        entry = page.first(".entry")
        accept_confirm do
          entry.click_link "Delete"
        end
    
        # Verify that the entry has been removed from the page
        assert_no_selector ".entry", text: entry.text
      end
    end