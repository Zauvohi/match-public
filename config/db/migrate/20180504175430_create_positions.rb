class CreatePositions < ActiveRecord::Migration[5.1]
  def change
    create_table :positions do |t|
      t.string :title
      t.text :desc
      t.float :referral_fee
      t.timestamps
    end
  end
end