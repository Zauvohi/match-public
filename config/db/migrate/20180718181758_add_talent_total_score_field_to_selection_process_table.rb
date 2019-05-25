class AddTalentTotalScoreFieldToSelectionProcessTable < ActiveRecord::Migration[5.1]
  def change
    add_column :selection_processes, :talent_total_score, :decimal, precision: 3, scale: 1
  end
end
