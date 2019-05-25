class AddSlugToPto < ActiveRecord::Migration[5.1]
  def change
    add_column :ptos, :slug, :string
    Pto.reset_column_information
    Pto.all.each(&:save)
  end
end
