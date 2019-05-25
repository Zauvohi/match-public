# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20190507184806) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "pgcrypto"

  create_table "activities", force: :cascade do |t|
    t.integer "owner_id"
    t.string "owner_type"
    t.string "name"
    t.text "description"
    t.string "activity_type_cd"
    t.datetime "date"
    t.datetime "follow_up_at"
    t.boolean "completed"
    t.boolean "superadmin_role", default: false
    t.boolean "full_time_role", default: false
    t.boolean "user_role", default: false
    t.boolean "insider_role", default: false
    t.boolean "customer_role", default: false
    t.boolean "talent_role", default: false
    t.boolean "beta_role", default: false
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "video_data"
    t.text "cv_data"
    t.index ["activity_type_cd"], name: "index_activities_on_activity_type_cd"
    t.index ["owner_type", "owner_id"], name: "index_activities_on_owner_type_and_owner_id"
  end

  create_table "client_surveys", force: :cascade do |t|
    t.integer "satisfaction"
    t.integer "likely_to_recommend"
    t.text "reasons"
    t.string "state"
    t.datetime "sent_at"
    t.datetime "first_viewed_at"
    t.datetime "answered_at"
    t.integer "reminder_count", default: 0
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.date "month"
    t.uuid "uuid", default: -> { "gen_random_uuid()" }, null: false
    t.datetime "reminder_sent_at"
    t.index ["project_id"], name: "index_client_surveys_on_project_id"
  end

  create_table "company_assessments", force: :cascade do |t|
    t.integer "month"
    t.integer "year"
    t.integer "user_id"
    t.decimal "question1"
    t.decimal "question2"
    t.decimal "question3"
    t.decimal "question4"
    t.decimal "question5"
    t.decimal "question6"
    t.decimal "question7"
    t.decimal "question8"
    t.decimal "question9"
    t.decimal "question10"
    t.decimal "question11"
    t.decimal "question12"
    t.decimal "question13"
    t.decimal "question14"
    t.decimal "question15"
    t.decimal "question16"
    t.decimal "question17"
    t.decimal "question18"
    t.decimal "question19"
    t.decimal "question20"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "total_score"
    t.text "comments"
    t.boolean "reviewed", default: false
    t.text "follow_up_notes"
  end

  create_table "company_assets", force: :cascade do |t|
    t.string "name"
    t.string "state"
    t.string "location"
    t.text "description"
    t.string "serial_number"
    t.text "notes"
    t.boolean "pristine_condition"
    t.boolean "has_accesories"
    t.boolean "has_password"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "asset_type"
    t.string "slug"
    t.text "receipt_data"
    t.text "return_receipt_data"
    t.datetime "state_changed_at"
    t.index ["user_id"], name: "index_company_assets_on_user_id"
  end

  create_table "contact_hr_processes", force: :cascade do |t|
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "contact_id"
    t.string "slug"
    t.text "identity_card_data"
    t.text "address_proof_data"
    t.text "bank_data_data"
    t.text "insurance_formats_data"
    t.text "carnet_photo_data"
    t.datetime "hired_at"
    t.datetime "started_at"
    t.index ["contact_id"], name: "index_contact_hr_processes_on_contact_id"
  end

  create_table "contact_referrals", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "referral_fee"
    t.string "email"
    t.datetime "referral_fee_due_date"
    t.string "state"
    t.bigint "position_id"
    t.bigint "contact_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_id"], name: "index_contact_referrals_on_contact_id"
    t.index ["position_id"], name: "index_contact_referrals_on_position_id"
    t.index ["user_id"], name: "index_contact_referrals_on_user_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.integer "user_id"
    t.string "lead_status"
    t.string "lead_type"
    t.string "lead_source"
    t.integer "lead_rating"
    t.string "first_name"
    t.string "last_name"
    t.string "company"
    t.string "url"
    t.string "notion_url"
    t.string "facebook_url"
    t.string "referral_source"
    t.string "title"
    t.date "birthday"
    t.string "address"
    t.integer "qualify_goal_year"
    t.integer "qualify_goal_week"
    t.string "location"
    t.string "country"
    t.string "phone"
    t.string "email"
    t.string "foursquare_url"
    t.string "angel_list_url"
    t.string "google_plus_url"
    t.string "twitter_url"
    t.string "linkedin_url"
    t.string "instagram_url"
    t.string "skype_id"
    t.text "description"
    t.boolean "mark_as_important"
    t.boolean "stay_in_touch"
    t.datetime "last_contacted"
    t.integer "relationship_score"
    t.text "import_notes"
    t.text "talent_notes"
    t.text "public_notes"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "github_url"
    t.datetime "qualified_at"
    t.integer "created_by_id"
    t.text "cv_data"
    t.boolean "added_to_external_mailing_list", default: false
    t.index ["slug"], name: "index_contacts_on_slug", unique: true
  end

  create_table "email_references", force: :cascade do |t|
    t.integer "referable_id"
    t.string "referable_type"
    t.string "message_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["referable_type", "referable_id"], name: "index_email_references_on_referable_type_and_referable_id"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "net_promoter_scores", force: :cascade do |t|
    t.float "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "position_applicants", force: :cascade do |t|
    t.integer "user_id"
    t.integer "position_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "position_id"], name: "index_position_applicants_on_user_id_and_position_id", unique: true
  end

  create_table "positions", force: :cascade do |t|
    t.string "title"
    t.text "desc"
    t.float "referral_fee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.string "contract_type"
    t.string "expertise_level"
    t.string "location"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "main_contact_first_name"
    t.string "main_contact_last_name"
    t.string "main_contact_email"
    t.integer "tech_leader_id"
    t.integer "tech_leader_junior_id"
    t.integer "project_manager_id"
    t.datetime "started_at"
    t.datetime "finished_at"
    t.string "state"
    t.string "slug"
    t.string "locale", default: "en"
  end

  create_table "pto_allocations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "year"
    t.decimal "amount", precision: 4, scale: 1, default: "10.0"
    t.datetime "created_at", default: "2019-04-15 20:59:19", null: false
    t.datetime "updated_at", default: "2019-04-15 20:59:19", null: false
    t.index ["year", "user_id"], name: "index_pto_allocations_year_user_id"
  end

  create_table "ptos", force: :cascade do |t|
    t.integer "user_id"
    t.date "date"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "approve1_by_id"
    t.datetime "approve1_at"
    t.integer "approve2_by_id"
    t.datetime "approve2_at"
    t.string "slug"
    t.decimal "duration", precision: 2, scale: 1, default: "1.0"
  end

  create_table "selection_processes", force: :cascade do |t|
    t.string "contact_name"
    t.string "state"
    t.bigint "tech_lead_1_id"
    t.bigint "tech_lead_2_id"
    t.bigint "recruiter_id"
    t.bigint "contact_id"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "interview_date"
    t.text "conference_instructions"
    t.text "talent_notes"
    t.text "talent_feedback"
    t.decimal "talent_core_skills", precision: 2, scale: 1
    t.decimal "talent_years_of_experience", precision: 2, scale: 1
    t.decimal "talent_communication", precision: 2, scale: 1
    t.decimal "talent_attitude", precision: 2, scale: 1
    t.decimal "talent_ambition", precision: 2, scale: 1
    t.decimal "talent_second_language", precision: 2, scale: 1
    t.decimal "talent_location", precision: 2, scale: 1
    t.decimal "talent_company", precision: 2, scale: 1
    t.decimal "talent_team", precision: 2, scale: 1
    t.decimal "talent_compensation", precision: 2, scale: 1
    t.decimal "talent_total_score", precision: 3, scale: 1
    t.text "technical1_notes"
    t.decimal "technical1_technical_answers", precision: 2, scale: 1
    t.decimal "technical1_english_level", precision: 2, scale: 1
    t.decimal "technical1_attitude", precision: 2, scale: 1
    t.text "technical1_feedback"
    t.decimal "technical1_total_score", precision: 2, scale: 1
    t.text "technical2_notes"
    t.decimal "technical2_technical_answers", precision: 2, scale: 1
    t.decimal "technical2_english_level", precision: 2, scale: 1
    t.decimal "technical2_attitude", precision: 2, scale: 1
    t.text "technical2_feedback"
    t.decimal "technical2_total_score", precision: 2, scale: 1
    t.decimal "total_score", precision: 3, scale: 1
    t.text "video_data"
    t.index ["contact_id"], name: "index_selection_processes_on_contact_id"
    t.index ["recruiter_id"], name: "index_selection_processes_on_recruiter_id"
    t.index ["slug"], name: "index_selection_processes_on_slug"
    t.index ["tech_lead_1_id"], name: "index_selection_processes_on_tech_lead_1_id"
    t.index ["tech_lead_2_id"], name: "index_selection_processes_on_tech_lead_2_id"
  end

  create_table "taggings", force: :cascade do |t|
    t.bigint "tag_id"
    t.string "taggable_type"
    t.bigint "taggable_id"
    t.string "tagger_type"
    t.bigint "tagger_id"
    t.string "context", limit: 128
    t.datetime "created_at"
    t.index ["context"], name: "index_taggings_on_context"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"
    t.index ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy"
    t.index ["taggable_id"], name: "index_taggings_on_taggable_id"
    t.index ["taggable_type", "taggable_id"], name: "index_taggings_on_taggable_type_and_taggable_id"
    t.index ["taggable_type"], name: "index_taggings_on_taggable_type"
    t.index ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type"
    t.index ["tagger_id"], name: "index_taggings_on_tagger_id"
    t.index ["tagger_type", "tagger_id"], name: "index_taggings_on_tagger_type_and_tagger_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "superadmin_role", default: false
    t.boolean "full_time_role", default: false
    t.boolean "user_role", default: false
    t.boolean "insider_role", default: false
    t.boolean "customer_role", default: false
    t.boolean "beta_role", default: false
    t.string "locale"
    t.datetime "last_seen"
    t.string "uid"
    t.boolean "talent_role", default: false
    t.integer "ptos_per_year", default: 10
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.boolean "manager_role", default: false
    t.string "slug"
    t.boolean "recruiter_role", default: false
    t.string "provider"
    t.string "time_zone", default: "Central Time (US & Canada)"
    t.boolean "office_manager_role", default: false
    t.boolean "marketing_role", default: false
    t.boolean "tech_lead_role", default: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid"], name: "index_users_on_uid", unique: true
  end

  create_table "version_associations", force: :cascade do |t|
    t.integer "version_id"
    t.string "foreign_key_name", null: false
    t.integer "foreign_key_id"
    t.index ["foreign_key_name", "foreign_key_id"], name: "index_version_associations_on_foreign_key"
    t.index ["version_id"], name: "index_version_associations_on_version_id"
  end

  create_table "versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object"
    t.datetime "created_at"
    t.text "object_changes"
    t.integer "transaction_id"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
    t.index ["transaction_id"], name: "index_versions_on_transaction_id"
  end

  add_foreign_key "client_surveys", "projects"
  add_foreign_key "contact_hr_processes", "contacts"
  add_foreign_key "contact_referrals", "contacts"
  add_foreign_key "contact_referrals", "positions"
  add_foreign_key "contact_referrals", "users"
  add_foreign_key "selection_processes", "contacts"
end
