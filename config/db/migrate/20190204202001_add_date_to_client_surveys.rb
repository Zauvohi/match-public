class AddDateToClientSurveys < ActiveRecord::Migration[5.1]
  def change
    add_column :client_surveys, :month, :date
  end
end
