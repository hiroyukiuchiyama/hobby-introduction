class AddScoreToHobbies < ActiveRecord::Migration[5.2]
  def change
    add_column :hobbies, :score, :float
  end
end
