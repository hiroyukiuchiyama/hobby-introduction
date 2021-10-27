class CreateHobbies < ActiveRecord::Migration[5.2]
  def change
    create_table :hobbies do |t|
      
      t.string :title
      t.string :body
      t.integer :category
      t.integer :user_id
      t.integer :rate, defalut: 0  # ← enum定義前なので、ここでは名前定義使えません
      t.timestamps
    end
  end
end
