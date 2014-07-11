class AlterStreamsIdInAcademics < ActiveRecord::Migration
  def change
    change_column :academics, :subject_streams_id, :integer
  end
end
