class CreatePhotoTable < ActiveRecord::Migration[6.0]
  def change
    create_table :photo do |t|
      t.int :id_photo
      t.string :photo
      t.string :description
  end
end
