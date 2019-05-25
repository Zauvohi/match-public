class AddColumnsToSelectionProcesses < ActiveRecord::Migration[5.1]
  def change
    add_column :selection_processes, :interview_date, :datetime
    add_column :selection_processes, :conference_instructions, :text
  end
end
