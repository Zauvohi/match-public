
return if Rails.env.production?

puts '== Running Seeds'

# This is to avoid issues with open letter
ActionMailer::Base.perform_deliveries = false

puts 'Running Users Seeds'
ActiveRecord::Base.transaction do
  load "#{Rails.root}/db/seeds/users.rb"
end

puts 'Running Contacts Seeds'
ActiveRecord::Base.transaction do
  load "#{Rails.root}/db/seeds/contacts.rb"
end

puts 'Running PTO Seeds'
ActiveRecord::Base.transaction do
  load "#{Rails.root}/db/seeds/ptos.rb"
end

puts 'Running Assets Seeds'
ActiveRecord::Base.transaction do
  load "#{Rails.root}/db/seeds/company_assets.rb"
end
