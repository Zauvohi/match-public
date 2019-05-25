class AddSlugToPositions < ActiveRecord::Migration[5.1]
  def change
    add_column  :positions, :slug, :string
  end
end
