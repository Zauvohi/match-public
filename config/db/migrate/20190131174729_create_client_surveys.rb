class CreateClientSurveys < ActiveRecord::Migration[5.1]
  def change
    create_table :client_surveys do |t|
      t.integer :satisfaction
      t.integer :likely_to_recommend
      t.integer :net_promoter_score
      t.text :reasons
      t.string :state
      t.datetime :sent_at
      t.datetime :first_viewed_at
      t.datetime :answered_at
      t.integer :reminder_count
      t.references :project, foreign_key: true
      t.timestamps null: false
      t.string :slug
    end
  end
end
