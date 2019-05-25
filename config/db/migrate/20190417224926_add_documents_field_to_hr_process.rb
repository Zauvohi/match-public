class AddDocumentsFieldToHrProcess < ActiveRecord::Migration[5.1]
  def change
    add_column :contact_hr_processes, :identity_card_data, :text
    add_column :contact_hr_processes, :address_proof_data, :text
    add_column :contact_hr_processes, :bank_data_data, :text
    add_column :contact_hr_processes, :insurance_formats_data, :text
    add_column :contact_hr_processes, :carnet_photo_data, :text
    add_column :contact_hr_processes, :hired_at, :datetime
    add_column :contact_hr_processes, :started_at, :datetime
  end
end
