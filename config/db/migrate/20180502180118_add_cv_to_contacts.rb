class AddCvToContacts < ActiveRecord::Migration[5.1]
  def up
    add_column :contacts, :cv_data, :text
  end

  def down
    remove_column :contacts, :cv_data
  end
end
