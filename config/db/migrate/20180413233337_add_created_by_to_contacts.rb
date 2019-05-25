class AddCreatedByToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :created_by_id, :integer, default: false
  end
end
