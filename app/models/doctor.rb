class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patientes, through: :appointments
end
