class CreateSubjectStreams < ActiveRecord::Migration
  def change
    create_table :subject_streams do |t|
      t.string :subject_stream

      t.timestamps
    end
  end
end
