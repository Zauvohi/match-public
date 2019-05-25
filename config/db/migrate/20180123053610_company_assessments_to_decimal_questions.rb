class CompanyAssessmentsToDecimalQuestions < ActiveRecord::Migration[5.1]
  def up
    (1..20).each do |i|
      change_column :company_assessments, "question#{i}", :decimal
    end

    add_column :company_assessments, :comments, :text
  end

  def down
    (1..20).each do |i|
      change_column :company_assessments, "question#{i}", :integer
    end
    # remove_column :company_assessments, :comments, :text
  end
end
