class AddUuidToClientSurveys < ActiveRecord::Migration[5.1]
  def change
    add_column :client_surveys, :uuid, :uuid, default: "gen_random_uuid()", null: false
  end
end
