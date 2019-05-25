class CreateCompanyAssessments < ActiveRecord::Migration[5.1]
  def change
    create_table :company_assessments do |t|
      t.integer :month
      t.integer :year
      t.integer :user_id
      (1..20).each do |i|
        t.integer "question#{i}"
      end

      t.timestamps
    end
  end
end
