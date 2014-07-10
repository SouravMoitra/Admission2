class AddCategoryToPersonals < ActiveRecord::Migration
  def change
    add_column :personals, :catergory_id, :integer
  end
end
