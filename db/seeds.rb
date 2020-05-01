require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Doctor.destroy_all
Patiente.destroy_all
Appointment.destroy_all

100.times do 
  p = Patiente.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  d = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: nil, zip_cope: Faker::Address.zip_code)
  a = Appointment.create!(doctor: d, patiente: p)

end

