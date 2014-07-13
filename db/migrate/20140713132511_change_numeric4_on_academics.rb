class ChangeNumeric4OnAcademics < ActiveRecord::Migration
  def change
    change_column :academics , :hs_marks_percent , :decimal, precision: 2
  end
end
