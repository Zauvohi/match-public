class AddTotalScoreToSelectionProcessTable < ActiveRecord::Migration[5.1]
  def change
    add_column :selection_processes, :total_score, :decimal, precision: 3, scale: 1, default: nil
  end
end
