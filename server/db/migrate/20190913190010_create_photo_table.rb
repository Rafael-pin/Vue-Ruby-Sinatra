class CreatePhotoTable < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.belongs_to :pet
      t.integer :id_photo
      t.string :photo
      t.string :description
    end
  end
end