class CreateVaccineTable < ActiveRecord::Migration[6.0]
  def change
    create_table :vaccines do |t|
      t.belongs_to :pet
      t.integer :id_vaccine
      t.string :name
      t.timestamp :date
      t.integer :duration
    end
  end
end
