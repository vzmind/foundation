class Location
  include Mongoid::Document
  belongs_to :organization, dependent: :nullify
  
  field :name
  field :address
end
