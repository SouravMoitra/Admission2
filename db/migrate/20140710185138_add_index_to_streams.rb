class AddIndexToStreams < ActiveRecord::Migration
  def change
    add_index :streams, :subject_stream_id
  end
end
