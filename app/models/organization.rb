class Organization
  include Mongoid::Document
  embeds_many :locations

  field :name
  field :address
  field :description

end
