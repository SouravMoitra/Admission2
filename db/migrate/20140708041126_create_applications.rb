class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.integer :user_id
      t.integer :stream_id

      t.timestamps
    end
  end
end
