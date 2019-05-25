class AddedToExternalMailingListToContact < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :added_to_external_mailing_list, :boolean, default: false
  end
end
