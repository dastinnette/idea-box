require 'rails_helper'

RSpec.describe UsersController, type: :feature do

  feature "User signs up" do

    scenario "with valid attributes" do
      visit new_user_path
      expect(current_path).to eq('/users/new')

      visit new_user_path
      fill_in "Name", with: "david"
      fill_in "Email", with: "david@example.com"
      fill_in "Password", with: "password"
      click_on "Sign up"

      expect(page).to have_content("david")
    end
  end

end
