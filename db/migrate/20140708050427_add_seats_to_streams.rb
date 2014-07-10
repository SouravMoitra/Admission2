class AddSeatsToStreams < ActiveRecord::Migration
  def change
    add_column :streams, :seats, :integer
  end
end
