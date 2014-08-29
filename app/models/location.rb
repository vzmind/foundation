class Location
  include Mongoid::Document
  belongs_to :organization, dependent: :nullify
  
  field :name
  field :address 
  field :city
  field :zipcode 
  field :landline 
  validates :name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :zipcode, presence: true
  validates :landline, presence: true
end
