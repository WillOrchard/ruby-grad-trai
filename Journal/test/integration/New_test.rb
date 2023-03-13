require "application_system_test_case"

class EntriesTest < ApplicationSystemTestCase
    test "create a new entry" do
        visit new_entry_url
    
        fill_in "Name", with: "New Journal Entry"
        fill_in "Link", with: "This is a new journal entry link"
        first('#select_id option', minimum: 1).select_option
        click_on "Create Entry"
        visit solirius_resources_path

        assert_text "New Journal Entry"
      end
    end