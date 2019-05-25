class AddTalentQualifiedFieldsToSelectionProcessTable < ActiveRecord::Migration[5.1]
  def change
    add_column :selection_processes, :talent_notes, :text
    add_column :selection_processes, :talent_feedback, :text
    add_column :selection_processes, :talent_core_skills, :decimal, default: 0, precision: 2, scale: 1
    add_column :selection_processes, :talent_years_of_experience, :decimal, default: 0, precision: 2, scale: 1
    add_column :selection_processes, :talent_communication, :decimal, default: 0, precision: 2, scale: 1
    add_column :selection_processes, :talent_attitude, :decimal, default: 0, precision: 2, scale: 1
    add_column :selection_processes, :talent_ambition, :decimal, default: 0, precision: 2, scale: 1
    add_column :selection_processes, :talent_second_language, :decimal, default: 0, precision: 2, scale: 1
    add_column :selection_processes, :talent_location, :decimal, default: 0, precision: 2, scale: 1
    add_column :selection_processes, :talent_company, :decimal, default: 0, precision: 2, scale: 1
    add_column :selection_processes, :talent_team, :decimal, default: 0, precision: 2, scale: 1
    add_column :selection_processes, :talent_compensation, :decimal, default: 0, precision: 2, scale: 1
  end
end
