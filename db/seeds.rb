# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(email: 'admin@edes.io', password: 'passpass', password_confirmation: 'passpass', role: 'superadmin')
o = Organization.create!(name: 'Itsu')
Location.create!(name: 'Itsu Regent street', address: '21 regent street', city: 'London', zipcode: 'EC1234', landline: '0123456789', organization_id: o.id)
