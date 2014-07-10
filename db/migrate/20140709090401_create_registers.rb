class CreateRegisters < ActiveRecord::Migration
  def change
    create_table :registers do |t|
      t.boolean :active

      t.timestamps
    end
  end
end
