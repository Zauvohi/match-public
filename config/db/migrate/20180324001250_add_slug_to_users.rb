class AddSlugToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :slug, :string
    User.reset_column_information
    User.all.each(&:save)
  end
end
