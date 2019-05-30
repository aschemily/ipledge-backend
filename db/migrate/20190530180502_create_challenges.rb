class CreateChallenges < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges do |t|
      t.string :title
      t.string :location
      t.string :information
      t.string :image
    
      t.timestamps
    end
  end
end
