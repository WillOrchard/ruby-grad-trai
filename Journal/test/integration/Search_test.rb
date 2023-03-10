require "application_system_test_case"

class EntriesTest < ApplicationSystemTestCase
    test "search for an entry" do
        # Visit the home page
        visit entries_url
    
        # Fill in the search field with a keyword
        fill_in "search", with: "new"
        find(".fa-search").click
    
        # Verify that the search results include the expected entry
        assert_text "New Journal Entry"
      end
    end