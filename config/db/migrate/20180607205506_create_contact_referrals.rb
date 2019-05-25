class CreateContactReferrals < ActiveRecord::Migration[5.1]
  def change
    create_table :contact_referrals do |t|
      t.string :first_name
      t.string :last_name
      t.integer :referral_fee
      t.string :email
      t.datetime :referral_fee_due_date
      t.string :state
      t.references :position, foreign_key: true
      t.references :contact, foreign_key: true
      t.references :user, foreign_key: true
    end
  end
end
