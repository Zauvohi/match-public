class FixCreatedByInContacts < ActiveRecord::Migration[5.1]
  def change
    change_column :contacts, :created_by_id, :integer, default: nil
  end
end
