class SetDefaultValueToReminderCountInClientSurveys < ActiveRecord::Migration[5.1]
  def change
    change_column :client_surveys, :reminder_count, :integer, :default => 0
  end
end
