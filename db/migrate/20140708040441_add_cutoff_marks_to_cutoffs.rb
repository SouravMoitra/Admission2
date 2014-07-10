class AddCutoffMarksToCutoffs < ActiveRecord::Migration
  def change
    add_column :cutoffs, :cutoff_marks, :integer
  end
end
