class AddIndexToApplications < ActiveRecord::Migration
  def change
    add_index :applications, :user_id, unique: true
  end
end
