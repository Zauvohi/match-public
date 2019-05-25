class RemoveHiredAtFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :hired_at
  end
end
