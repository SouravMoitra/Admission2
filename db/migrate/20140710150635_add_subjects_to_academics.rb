class AddSubjectsToAcademics < ActiveRecord::Migration
  def change
    add_column :academics, :sub1, :string
    add_column :academics, :sub1_marks, :integer
    add_column :academics, :sub2, :string
    add_column :academics, :sub2_marks, :integer
    add_column :academics, :sub3, :string
    add_column :academics, :sub3_marks, :integer
    add_column :academics, :sub4, :string
    add_column :academics, :sub4_marks, :integer
    add_column :academics, :sub5, :string
    add_column :academics, :sub5_marks, :integer
    add_column :academics, :sub6, :string
    add_column :academics, :sub6_marks, :integer
    add_column :academics, :sub7, :string
    add_column :academics, :sub7_marks, :integer
    add_column :academics, :sub8, :string
    add_column :academics, :sub8_marks, :integer
    add_column :academics, :sub9, :string
    add_column :academics, :sub9_marks, :integer
    add_column :academics, :sub10, :string
    add_column :academics, :sub10_marks, :integer
  end
end
