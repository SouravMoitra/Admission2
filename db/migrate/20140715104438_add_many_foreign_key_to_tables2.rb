class AddManyForeignKeyToTables2 < ActiveRecord::Migration
  def change
    add_foreign_key(:streams, :subject_streams, column: 'subject_stream_id')
    add_foreign_key(:cutoffs, :streams, column: 'stream_id')
  end
end
