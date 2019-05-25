class ImprovePtos < ActiveRecord::Migration[5.1]
  def change
    add_column :ptos, :approve1_by_id, :integer
    add_column :ptos, :approve1_at, :datetime
    add_column :ptos, :approve2_by_id, :integer
    add_column :ptos, :approve2_at, :datetime

    add_column :users, :ptos_per_year, :integer, default: 10
    add_column :users, :hired_at, :datetime
  end
end
