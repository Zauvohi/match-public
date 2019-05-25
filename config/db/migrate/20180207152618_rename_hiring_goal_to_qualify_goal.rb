class RenameHiringGoalToQualifyGoal < ActiveRecord::Migration[5.1]
  def change
    rename_column :contacts, :hiring_goal_year, :qualify_goal_year
    rename_column :contacts, :hiring_goal_week, :qualify_goal_week
    add_column :contacts, :qualified_at, :datetime
  end
end
