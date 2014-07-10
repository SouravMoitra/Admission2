class CreateStreams < ActiveRecord::Migration
  def change
    create_table :streams do |t|
      t.string :stream

      t.timestamps
    end
  end
end
