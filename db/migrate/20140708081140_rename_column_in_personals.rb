class RenameColumnInPersonals < ActiveRecord::Migration
  def change
    rename_column :personals, :catergory_id , :category_id
  end
end
