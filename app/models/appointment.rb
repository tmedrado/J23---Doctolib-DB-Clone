class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patiente
end
