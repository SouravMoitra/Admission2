class AddCalculatedMarksToAcademicsToAcademics < ActiveRecord::Migration
  def change
    add_column :academics, :calculated_marks, :integer
  end
end
