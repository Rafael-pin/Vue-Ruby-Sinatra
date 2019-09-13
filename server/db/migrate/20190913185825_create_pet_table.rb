class CreatePetTable < ActiveRecord::Migration[6.0]
  def change
  end
end
class CreatePerTable < ActiveRecord::Migration[5.0]
  def change
    create_table :pet do |t|
      t.string :name
      t.time :birth_date
      t.double :weight
      t.Photo :profile_photo
      t.string :type
      t.Photo :photos
      t.Vaccine :vaccines
    end
  end
end
id_pet, :name, :birth_date, :weight, :profile_photo, :type, :photos, :vaccines