class ChangeNumeric7OnAcademics < ActiveRecord::Migration
  def change
    change_column :academics , :tenth_marks_percent , :decimal, precision: 10, scale: 2
  end
end
