# spec/factories/locations.rb 

require 'faker'

FactoryGirl.define do 
  factory :location do |f| 
    f.name {Faker::Company.name}
    f.address {Faker::Address.street_address} 
    f.city {Faker::Address.city}
    f.zipcode {Faker::Address.zip_code}
    f.landline {Faker::PhoneNumber.phone_number}
  end
end
