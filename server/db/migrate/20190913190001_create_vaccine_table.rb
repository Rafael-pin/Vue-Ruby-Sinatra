class CreateVaccineTable < ActiveRecord::Migration[6.0]
  def change
    create_table :vaccine do |t|
      t.int :id_vaccine
      t.string :name
      t.timestamp :date
      t.int :duration
    end
  end
end
