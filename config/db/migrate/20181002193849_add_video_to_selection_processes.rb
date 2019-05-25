class AddVideoToSelectionProcesses < ActiveRecord::Migration[5.1]
  def change
    add_column :selection_processes, :video_data, :text
  end
end
