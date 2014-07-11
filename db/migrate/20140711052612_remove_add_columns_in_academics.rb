class RemoveAddColumnsInAcademics < ActiveRecord::Migration
  def change
    remove_column :academics, :subject_streams_id
    add_column :academics, :subject_streams_id, :integer
  end
end
