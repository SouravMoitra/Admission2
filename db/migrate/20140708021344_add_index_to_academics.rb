class AddIndexToAcademics < ActiveRecord::Migration
  def change
    add_index :academics, :user_id , unique: true
  end
end
