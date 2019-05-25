class ContactRenameSourceToReferralSource < ActiveRecord::Migration[5.1]
  def change
    rename_column :contacts, :source, :referral_source
  end
end
