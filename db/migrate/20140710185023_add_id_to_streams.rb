class AddIdToStreams < ActiveRecord::Migration
  def change
    add_column :streams, :subject_stream_id, :integer
  end
end
