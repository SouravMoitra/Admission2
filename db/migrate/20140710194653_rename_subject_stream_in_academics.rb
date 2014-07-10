class RenameSubjectStreamInAcademics < ActiveRecord::Migration
  def change
    rename_column :academics, :subject_stream, :subject_streams_id
  end
end
