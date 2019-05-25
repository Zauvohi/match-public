class AddTimestampsToPtoAllocation < ActiveRecord::Migration[5.1]
  def change
    add_column :pto_allocations, :created_at, :datetime, null: false, default: Time.current
    add_column :pto_allocations, :updated_at, :datetime, null: false, default: Time.current
  end
end
