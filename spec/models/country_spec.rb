require 'rails_helper'

describe Country do
  it "is valid with valid attributes" do
    expect(Country.new(name: 'CountryTest')).to be_valid
  end

  it "is not valid without a name" do
    expect(Country.new).to_not be_valid
  end
end
