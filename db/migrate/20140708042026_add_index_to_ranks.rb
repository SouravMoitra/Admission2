class AddIndexToRanks < ActiveRecord::Migration
  def change
    add_index :ranks, :user_id, unique: true
  end
end
