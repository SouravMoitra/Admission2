class AddLnameToPersonals < ActiveRecord::Migration
  def change
    add_column :personals, :last_name, :string
  end
end
