class AddReviewedToCompanyAssessment < ActiveRecord::Migration[5.1]
  def change
    add_column :company_assessments, :reviewed, :boolean, default: false
  end
end
