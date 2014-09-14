# spec/models/organization_spec.rb
require "rails_helper"

describe Organization do
  context "basic organization with locations" do
    subject(:org){create(:organization_with_locations)}
    it "has a valid structure" do
      expect(org).to be_valid
    end
    
    it "has multiple (exactly 5) locations attached" do
      expect(org).to have(5).locations
    end
  end

end
