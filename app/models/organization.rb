class Organization
  include Mongoid::Document
  has_many :locations

  field :name
  field :address
  field :city
  field :zipcode
  field :landline

end
