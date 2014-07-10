class AddIndexToPersonals < ActiveRecord::Migration
  def change
    add_index :personals, :user_id, :unique => true
  end
end
