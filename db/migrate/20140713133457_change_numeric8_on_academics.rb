class ChangeNumeric8OnAcademics < ActiveRecord::Migration
  def change
    change_column :academics , :hs_marks_percent , :decimal, precision: 10, scale: 2
  end
end
