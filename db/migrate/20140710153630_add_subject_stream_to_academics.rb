class AddSubjectStreamToAcademics < ActiveRecord::Migration
  def change
    add_column :academics, :subject_stream, :string
  end
end
