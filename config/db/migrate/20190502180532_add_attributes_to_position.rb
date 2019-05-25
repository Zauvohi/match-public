class AddAttributesToPosition < ActiveRecord::Migration[5.1]
  def change
    add_column :positions, :contract_type, :string
    add_column :positions, :expertise_level, :string
    add_column :positions, :location, :string
  end
end
