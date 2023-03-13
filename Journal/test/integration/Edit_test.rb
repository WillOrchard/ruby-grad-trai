require "application_system_test_case"

class EntriesTest < ApplicationSystemTestCase
    test "edit an existing entry" do

        visit new_entry_url
    
        fill_in "Name", with: "New Journal Entry"
        fill_in "Link", with: "This is a new journal entry link"
        first('#select_id option', minimum: 1).select_option
        click_on "Create Entry"

        visit solirius_resources_path
    
        edit_button = page.first('a.btn.btn-outline-black', text: 'EDIT')
        edit_button.click

        fill_in "Name", with: "Updated Journal Entry"
        fill_in "Link", with: "This is an updated journal entry link"
        first('#select_id option', minimum: 1).select_option
        click_on "Update Entry"
        visit solirius_resources_path

        assert_text("Updated Journal Entry".downcase)
      end
    end