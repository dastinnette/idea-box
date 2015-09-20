require 'rails_helper'

feature "User signs up" do

  scenario "with valid attributes" do
    visit "/signup"
    expect (current_path).to eq('/signup')
  end

end
