class CreateContactHrProcess < ActiveRecord::Migration[5.1]
  def change
    create_table :contact_hr_processes do |t|
      t.string :state
      t.timestamps
      t.references :contact, foreign_key: true
    end
  end
end
