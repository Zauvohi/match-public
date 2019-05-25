class AddTechnical1QualifiedFieldstoSelectionProcessTable < ActiveRecord::Migration[5.1]
  def change
    add_column :selection_processes, :technical1_notes, :text
    add_column :selection_processes, :technical1_technical_answers, :decimal, precision: 2, scale: 1, default: nil
    add_column :selection_processes, :technical1_english_level, :decimal, precision: 2, scale: 1, default: nil
    add_column :selection_processes, :technical1_attitude, :decimal, precision: 2, scale: 1, default: nil
    add_column :selection_processes, :technical1_feedback, :text
    add_column :selection_processes, :technical1_total_score, :decimal, precision: 2, scale: 1, default: nil
  end
end
