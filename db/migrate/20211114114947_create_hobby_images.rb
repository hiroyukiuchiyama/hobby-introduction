class CreateHobbyImages < ActiveRecord::Migration[5.2]
  def change
    create_table :hobby_images do |t|
      t.string :image_id
      t.text :caption
      t.integer :hobby_id

      t.timestamps
    end
  end
end