class ChangeNumeric2OnAcademics < ActiveRecord::Migration
  def change
    change_column :academics , :hs_marks_percent , :decimal
  end
end
