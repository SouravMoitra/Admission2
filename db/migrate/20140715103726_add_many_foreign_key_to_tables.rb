class AddManyForeignKeyToTables < ActiveRecord::Migration
  def change
    add_foreign_key(:academics, :users, column: 'user_id')
    add_foreign_key(:ranks, :users, column: 'user_id')
    add_foreign_key(:applications, :users, column: 'user_id')
  end
end
