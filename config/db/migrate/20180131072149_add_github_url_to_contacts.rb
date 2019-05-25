class AddGithubUrlToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :github_url, :string
  end
end
