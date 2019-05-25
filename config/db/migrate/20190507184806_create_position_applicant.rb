class CreatePositionApplicant < ActiveRecord::Migration[5.1]
  def change
    create_table :position_applicants do |t|
      t.integer :user_id
      t.integer :position_id
      t.timestamps
    end
    add_index :position_applicants, [:user_id, :position_id], unique: true
  end
end
