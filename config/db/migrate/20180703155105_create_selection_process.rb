class CreateSelectionProcess < ActiveRecord::Migration[5.1]
  def change
    create_table :selection_processes do |t|
      t.string :contact_name
      t.string :state
      t.references :tech_lead_1, index: true
      t.references :tech_lead_2, index: true
      t.references :recruiter, index: true
      t.references :contact, foreign_key: true, index: true
      t.string :slug, index: true, unique: true 

      t.timestamps
    end
  end
end
