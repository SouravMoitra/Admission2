class AddMnameToPersonals < ActiveRecord::Migration
  def change
    add_column :personals, :middle_name, :string
  end
end
