class CreateCutoffs < ActiveRecord::Migration
  def change
    create_table :cutoffs do |t|
      t.integer :stream_id
      t.integer :category_id

      t.timestamps
    end
  end
end
