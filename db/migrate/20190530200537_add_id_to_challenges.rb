class AddIdToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :user_id, :integer
  end
end
