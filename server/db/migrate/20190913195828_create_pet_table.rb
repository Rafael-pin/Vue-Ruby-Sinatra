class CreatePetTable < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.integer :id_pet
      t.string :name
      t.timestamp :birth_date
      t.decimal :weight
      t.string :profile_photo
      t.string :kind
    end
  end
end