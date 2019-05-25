class AddRecruiterRoleToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :recruiter_role, :boolean, default: false
  end
end
