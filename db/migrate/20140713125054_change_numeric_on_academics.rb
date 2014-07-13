class ChangeNumericOnAcademics < ActiveRecord::Migration
  def change
    change_column :academics , :tenth_marks_percent , :decimal
  end
end
