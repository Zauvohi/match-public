class AddReminderSentAtToClientSurveys < ActiveRecord::Migration[5.1]
  def change
    add_column :client_surveys, :reminder_sent_at, :datetime
  end
end
