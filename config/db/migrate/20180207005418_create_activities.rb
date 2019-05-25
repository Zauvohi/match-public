class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.integer :owner_id
      t.string  :owner_type

      t.string :name
      t.text :description
      t.string :activity_type_cd
      t.datetime :date
      t.datetime :follow_up_at
      t.boolean :completed

      t.boolean "superadmin_role", default: false
      t.boolean "full_time_role", default: false
      t.boolean "user_role", default: false
      t.boolean "insider_role", default: false
      t.boolean "customer_role", default: false
      t.boolean "talent_role", default: false
      t.boolean "beta_role", default: false

      t.integer :user_id

      t.timestamps
    end

    add_index :activities, [:owner_type, :owner_id]
    add_index :activities, [:activity_type_cd]
  end
end
