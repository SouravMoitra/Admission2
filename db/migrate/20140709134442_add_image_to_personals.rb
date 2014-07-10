class AddImageToPersonals < ActiveRecord::Migration
  def change
    add_column :personals, :image, :string
  end
end
