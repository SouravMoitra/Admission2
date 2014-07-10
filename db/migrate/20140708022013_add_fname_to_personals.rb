class AddFnameToPersonals < ActiveRecord::Migration
  def change
    add_column :personals, :first_name, :string
  end
end
