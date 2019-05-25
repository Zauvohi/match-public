class ChangeDefaultValueForTalentFieldsSelectionProcessTable < ActiveRecord::Migration[5.1]
  def change
    change_column_default(:selection_processes, :talent_core_skills, nil)
    change_column_default(:selection_processes, :talent_years_of_experience, nil)
    change_column_default(:selection_processes, :talent_communication, nil)
    change_column_default(:selection_processes, :talent_attitude, nil)
    change_column_default(:selection_processes, :talent_ambition, nil)
    change_column_default(:selection_processes, :talent_second_language, nil)
    change_column_default(:selection_processes, :talent_location, nil)
    change_column_default(:selection_processes, :talent_company, nil)
    change_column_default(:selection_processes, :talent_team, nil)
    change_column_default(:selection_processes, :talent_compensation, nil)
  end
end
