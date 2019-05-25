class CompanyAssessment < ActiveRecord::Migration[5.1]
  def change
    add_column :company_assessments, :total_score, :decimal
  end
end
