class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.belongs_to :doctor, index: true
      t.belongs_to :patiente, index: true

      t.timestamps
    end
  end
end
