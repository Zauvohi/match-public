class AddLocaleToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :locale, :string, default: 'en'
  end
end
