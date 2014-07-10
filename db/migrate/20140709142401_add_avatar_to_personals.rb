class AddAvatarToPersonals < ActiveRecord::Migration
  def change
    add_column :personals, :avatar, :string
  end
end
