class AddDurationToPtoTable < ActiveRecord::Migration[5.1]
  def change
    add_column :ptos, :duration, :decimal, default: 1, precision: 2, scale: 1
    connection.execute('update ptos set duration = 1')
  end
end
