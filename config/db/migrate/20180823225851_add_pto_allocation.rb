class AddPtoAllocation < ActiveRecord::Migration[5.1]
  def change
    create_table :pto_allocations do |t|
      t.integer :user_id
      t.integer :year
      t.decimal :amount, precision: 4, scale: 1, default: "10.0"
      t.index ["year", "user_id"], name: "index_pto_allocations_year_user_id"
    end
  end
end
