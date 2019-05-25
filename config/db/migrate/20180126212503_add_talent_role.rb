class AddTalentRole < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :talent_role, :boolean, default: false
  end
end
