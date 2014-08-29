# spec/factories/locations.rb 

require 'faker'

FactoryGirl.define do 
  factory :location do |f| 
    f.name {Faker::Company.name}
    f.address {Faker::Address.city} 
  end
end
