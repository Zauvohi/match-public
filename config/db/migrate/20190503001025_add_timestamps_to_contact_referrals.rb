class AddTimestampsToContactReferrals < ActiveRecord::Migration[5.1]
  def change
    add_timestamps(:contact_referrals, null: true)

    ContactReferral.update_all(created_at: Time.current, updated_at: Time.current)

    change_column_null(:contact_referrals, :created_at, false)
    change_column_null(:contact_referrals, :updated_at, false)
  end
end
