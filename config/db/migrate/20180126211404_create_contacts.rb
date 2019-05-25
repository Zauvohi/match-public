class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.integer :user_id
      t.string :lead_status
      t.string :lead_type
      t.string :lead_source
      t.integer :lead_rating
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :url
      t.string :notion_url
      t.string :facebook_url
      t.string :source
      t.string :title
      t.date :birthday
      t.string :address
      t.integer :hiring_goal_year
      t.integer :hiring_goal_week
      t.string :location
      t.string :country
      t.string :phone
      t.string :email
      t.string :foursquare_url
      t.string :facebook_url
      t.string :angel_list_url
      t.string :google_plus_url
      t.string :twitter_url
      t.string :linkedin_url
      t.string :instagram_url
      t.string :skype_id
      t.text :description
      t.boolean :mark_as_important
      t.boolean :stay_in_touch
      t.datetime :last_contacted
      t.integer :created_by
      t.integer :relationship_score

      t.text :import_notes
      t.text :talent_notes
      t.text :public_notes

      t.string :slug

      t.timestamps
    end
    add_index :contacts, :slug, unique: true
  end
end
