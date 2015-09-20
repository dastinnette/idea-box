require 'rails_helper'

RSpec.describe User, type: :model do

  def valid_attributes
    { name: "david",
      email: "david@example.com",
      password: "password", }
  end

  it "it creates a user" do
    result = User.new(valid_attributes)
    expect(result).to be_valid
    expect(result.name).to eq("david")
    expect(result.email).to eq("david@example.com")
    expect(result.password).to eq("password")
  end

end
