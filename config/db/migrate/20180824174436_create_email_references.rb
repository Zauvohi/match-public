class CreateEmailReferences < ActiveRecord::Migration[5.1]
  def change
    create_table :email_references do |t|
      t.integer :referable_id
      t.string  :referable_type
      t.string  :message_id
      t.timestamps
    end
    add_index :email_references, [:referable_type, :referable_id]
  end
end
