class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :main_contact_first_name
      t.string :main_contact_last_name
      t.string :main_contact_email
      t.integer :tech_leader_id
      t.integer :tech_leader_junior_id
      t.integer :project_manager_id
      t.datetime :started_at
      t.datetime :finished_at
      t.string :state
      t.string :slug
    end
  end
end
