class AddIndexToCutoffs < ActiveRecord::Migration
  def change
    add_index :cutoffs, :stream_id
  end
end
