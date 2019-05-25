class CreateNetPromoterScore < ActiveRecord::Migration[5.1]
  def change
    create_table :net_promoter_scores do |t|
      t.float :score
      t.timestamps null: false
    end
  end
end
