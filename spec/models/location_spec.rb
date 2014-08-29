# spec/models/location_spec.rb 
require 'rails_helper'

describe Location do
  it "has a valid factory" do
    expect(build(:location)).to be_valid
  end
  it "is invalid without a title"
end 
