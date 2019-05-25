class AddSlugToContactHrProcess < ActiveRecord::Migration[5.1]
  def change
    add_column :contact_hr_processes, :slug, :string
  end
end
