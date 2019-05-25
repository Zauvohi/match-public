class ChangePtoDateFromDateTimeToDate < ActiveRecord::Migration[5.1]
  def change
    change_column :ptos, :date, :date
  end
end
