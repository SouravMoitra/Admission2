class CreatePersonals < ActiveRecord::Migration
  def change
    create_table :personals do |t|
      t.integer :user_id
      t.date :date_of_birth
      t.string :gender
      t.string :blood_group
      t.string :fathers_name
      t.string :mothers_name
      t.text :address_present

      t.timestamps
    end
  end
end
