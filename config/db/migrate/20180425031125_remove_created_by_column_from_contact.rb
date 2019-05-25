class RemoveCreatedByColumnFromContact < ActiveRecord::Migration[5.1]
  def change
    remove_column :contacts, :created_by
  end
end
