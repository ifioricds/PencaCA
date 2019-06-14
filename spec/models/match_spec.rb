require 'rails_helper'

describe Match do
  before(:all) do
    @c1 = Country.create(name: 'Country1')
    @c2 = Country.create(name: 'Country2')
  end
  after(:all) do
    Country.delete_all
  end
  
  it "is valid with valid attributes" do
    expect(Match.new(date: Time.now, country_1_id: @c1.id, country_2_id: @c2.id, group: 'First', phase: 'First')).to be_valid
  end
  it "is not valid without date" do
    expect(Match.new(country_1_id: @c1.id, country_2_id: @c2.id, group: 'First', phase: 'First')).not_to be_valid
  end
  it "is not valid without country_1_id" do
    expect(Match.new(date: Time.now, country_2_id: @c2.id, group: 'First', phase: 'First')).not_to be_valid
  end
  it "is not valid without country_2_id" do
    expect(Match.new(date: Time.now, country_1_id: @c1.id, group: 'First', phase: 'First')).not_to be_valid
  end
  it "is not valid without group" do
    expect(Match.new(date: Time.now, country_1_id: @c1.id, country_2_id: @c2.id, phase: 'First')).not_to be_valid
  end
  it "is not valid without phase" do
    expect(Match.new(date: Time.now, country_1_id: @c1.id, country_2_id: @c2.id, group: 'First')).not_to be_valid
  end
  it "country 1 is missed" do
    @match = Match.new(date: Time.now, country_1_id: @c1.id, country_2_id: @c2.id, group: 'First', phase: 'First')
    @c1.delete
    expect(@match.country_1).to be_nil
    expect(@match.country_2).not_to be_nil
  end
end