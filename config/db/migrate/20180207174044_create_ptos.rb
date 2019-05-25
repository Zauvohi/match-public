class CreatePtos < ActiveRecord::Migration[5.1]
  def change
    create_table :ptos do |t|
      t.integer :user_id
      t.datetime :date
      t.string :state

      t.timestamps
    end
  end
end
