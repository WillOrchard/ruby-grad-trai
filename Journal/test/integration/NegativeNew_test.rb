require "application_system_test_case"

class EntriesTest < ApplicationSystemTestCase
    test "test error message for blank entry" do
        visit new_entry_url

        click_on "Create Entry"

        assert_text "Error - 'Name' field cannot be empty"
        assert_text "Error - 'Link' field cannot be empty"
      end
    end