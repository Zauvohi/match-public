class AddOfficeManagerRole < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :office_manager_role, :boolean, default: false
  end
end
