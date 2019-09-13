class CreatePetTable < ActiveRecord::Migration[6.0]
  def change
  end
end
class CreatePerTable < ActiveRecord::Migration[5.0]
  def change
    create_table :pet do |t|
      t.int :id_pet
      t.string :name
      t.timestamp :birth_date
      t.double :weight
      t.string :profile_photo
      t.string :type
    end
  end
end