class AddFollowUpNotesToCompanyAssessment < ActiveRecord::Migration[5.1]
  def change
    add_column :company_assessments, :follow_up_notes, :text
  end
end
