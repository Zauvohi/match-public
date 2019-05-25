class AddTechnical2QualifiedFieldstoSelectionProcessTable < ActiveRecord::Migration[5.1]
  def change
    add_column :selection_processes, :technical2_notes, :text
    add_column :selection_processes, :technical2_technical_answers, :decimal, precision: 2, scale: 1, default: nil
    add_column :selection_processes, :technical2_english_level, :decimal, precision: 2, scale: 1, default: nil
    add_column :selection_processes, :technical2_attitude, :decimal, precision: 2, scale: 1, default: nil
    add_column :selection_processes, :technical2_feedback, :text
    add_column :selection_processes, :technical2_total_score, :decimal, precision: 2, scale: 1, default: nil
  end
end
