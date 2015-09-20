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

  it "cannot create a user without a name" do
    result = User.new(email: "david@example.com")
    expect(result).to be_invalid
  end

  it "cannot create a user without a password" do
    result = User.new(name: "david", email: "david@example.com")
    expect(result).to be_invalid
  end

  it "cannot create a user with the same email" do
    2.times { User.create(valid_attributes) }

    result = User.where(email: "david@example.com")
    expect(result.count).to eq(1)
  end

  it "cannot create a user with non-letter characters" do
    result = User.new(name: "daivd1", email: "david@example.com", password: "password")
    expect(result).to be_invalid
  end

end
