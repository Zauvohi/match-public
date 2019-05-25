class RemoveNetPromoterScoreFromClientSurveys < ActiveRecord::Migration[5.1]
  def change
    remove_column :client_surveys, :net_promoter_score
  end
end
