dumb_password = ENV.fetch('SEED_PASSWORD') { "1234567890" }

User.create_with(
  first_name: 'Admin',
  last_name: 'densitylabs',
  password: dumb_password,
  password_confirmation: dumb_password,
  superadmin_role: true,
  full_time_role: true,
  beta_role: false,
  confirmed_at: DateTime.now,
).find_or_create_by(email: 'admin@staging.densitylabs.io')

User.create_with(
  first_name: 'Dev ES',
  last_name: 'densitylabs',
  password: dumb_password,
  password_confirmation: dumb_password,
  full_time_role: true,
  beta_role: false,
  locale: 'es',
  confirmed_at: DateTime.now,
).find_or_create_by(email: 'dev@staging.densitylabs.io')

User.create_with(
  first_name: 'Dev EN',
  last_name: 'densitylabs',
  password: dumb_password,
  password_confirmation: dumb_password,
  full_time_role: true,
  beta_role: false,
  locale: 'en',
  confirmed_at: DateTime.now,
).find_or_create_by(email: 'dev.en@staging.densitylabs.io')

User.create_with(
  first_name: 'Insider',
  last_name: 'densitylabs',
  password: dumb_password,
  password_confirmation: dumb_password,
  full_time_role: false,
  insider_role: true,
  beta_role: false,
  locale: 'es',
  confirmed_at: DateTime.now,
).find_or_create_by(email: 'insider@staging.densitylabs.io')

User.create_with(
  first_name: 'Customer',
  last_name: 'densitylabs',
  password: dumb_password,
  password_confirmation: dumb_password,
  full_time_role: false,
  customer_role: true,
  beta_role: false,
  confirmed_at: DateTime.now,
).find_or_create_by(email: 'customer@staging.densitylabs.io')

User.create_with(
  first_name: 'Talent',
  last_name: 'densitylabs',
  password: dumb_password,
  password_confirmation: dumb_password,
  full_time_role: false,
  talent_role: true,
  beta_role: false,
  confirmed_at: DateTime.now,
).find_or_create_by(email: 'talent@staging.densitylabs.io')

User.create_with(
  first_name: 'Manager',
  last_name: 'densitylabs',
  password: dumb_password,
  password_confirmation: dumb_password,
  full_time_role: true,
  talent_role: false,
  beta_role: false,
  manager_role: true,
  confirmed_at: DateTime.now,
).find_or_create_by(email: 'manager@staging.densitylabs.io')

User.create_with(
  first_name: 'Recruiter',
  last_name: 'densitylabs',
  password: dumb_password,
  password_confirmation: dumb_password,
  full_time_role: false,
  talent_role: false,
  beta_role: false,
  recruiter_role: true,
  confirmed_at: DateTime.now,
).find_or_create_by(email: 'recruiter@staging.densitylabs.io')


User.create_with(
  first_name: 'Beta',
  last_name: 'densitylabs',
  password: dumb_password,
  password_confirmation: dumb_password,
  full_time_role: false,
  talent_role: false,
  beta_role: true,
  recruiter_role: false,
  confirmed_at: DateTime.now,
).find_or_create_by(email: 'beta@staging.densitylabs.io')

User.create_with(
  first_name: 'Office Manager',
  last_name: 'densitylabs',
  password: dumb_password,
  password_confirmation: dumb_password,
  full_time_role: true,
  office_manager_role: true,
  talent_role: false,
  beta_role: true,
  recruiter_role: false,
  confirmed_at: DateTime.now,
).find_or_create_by(email: 'office.manager@staging.densitylabs.io')


User.create_with(
  first_name: 'Marketing',
  last_name: 'densitylabs',
  password: dumb_password,
  password_confirmation: dumb_password,
  full_time_role: true,
  marketing_role: true,
  confirmed_at: DateTime.now,
).find_or_create_by(email: 'marketing@staging.densitylabs.io')

User.create_with(
  first_name: 'Tech Lead',
  last_name: 'densitylabs',
  password: dumb_password,
  password_confirmation: dumb_password,
  full_time_role: true,
  tech_lead_role: true,
  confirmed_at: DateTime.now,
).find_or_create_by(email: 'tech_lead@staging.densitylabs.io')
