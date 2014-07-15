class AddForeignKeyToPersonals < ActiveRecord::Migration
  def change
    add_foreign_key(:personals, :users, column: 'user_id')
  end
end
