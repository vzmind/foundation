# spec/factories/organizations.rb 

require 'faker'

FactoryGirl.define do 
  factory :organization do |f| 
    f.name {Faker::Company.name}
    f.address {Faker::Address.street_address} 
    f.city {Faker::Address.city}
    f.zipcode {Faker::Address.zip_code}
    f.landline {Faker::PhoneNumber.phone_number}
    
    factory :organization_with_locations do
      ignore do
        locations_count 5
      end
      after(:create) do |organization, evaluator|
        FactoryGirl.create_list(:location, evaluator.locations_count, organization: organization)
        organization.reload
      end
    end
  end
end

