require 'rails_helper'

feature "User signs up" do

  scenario "with valid attributes" do
    visit "/signup"
    expect(current_path).to eq('/signup')

    fill_in "Name", with: "david"
    fill_in "Email", with: "david@example.com"
    fill_in "Password", with: "password"
    click_on "Sign up"

    expect(current_path).to eq('/profile')

    within ".profile-info" do
      expect(page).to have_content("david")
    end
  end

end
