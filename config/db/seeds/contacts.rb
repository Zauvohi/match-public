require 'ffaker'

return if Contact.count > User.count

domain = 'staging.densitylabs.io'
user = User.find_by_email("talent@#{domain}")
Current.user = user

Contact.create(email: "user@#{domain}")

100.times do |i|
  first_name = FFaker::Name.first_name
  Contact.create(
    lead_status: 'before_meeting',
    lead_type: 'recruiter',
    lead_source: 'Linkedin',
    referral_source: 'Linkedin',
    lead_rating: '8',
    first_name: first_name,
    last_name: FFaker::Name.last_name,
    company: FFaker::Company.name,
    title: FFaker::Job.title,
    birthday: DateTime.now - 28.year,
    address: FFaker::Address.street_address,
    location: FFaker::Address.city,
    country: FFaker::Address.country,
    phone: FFaker::PhoneNumber.phone_number,
    email: "#{first_name}-#{i}@#{domain}",
    skype_id: FFaker::Internet.user_name,
    mark_as_important: false,
    stay_in_touch: true,
    last_contacted: DateTime.yesterday,
    relationship_score: (1..10).to_a.sample,
    qualify_goal_year: 2017,
    qualify_goal_week: (1..52).to_a.sample,
    skill_list: [".NET", "C Sharp", "Visual Basic", "Java", "Bootstrap3", "Laravel5", "Angular4", "Invisionapp", "Sketchapp", "PHP", "AngularJS", "Advanced English", "Photoshop", "InVision", "jQuery", "Angular", "Prototyping", "Axure Pro", "Pencil", "Illustrator", "BD Oracle", "Mongo", "Express", "Ajax", "Phalcon Framework", "SASS", "BEM", "Wordpress", "Childtheming", "SEO", "SCRUM", "SQL Server", "Service Manager", "Kendo", "PostgreSQL", "MongoDB", "NodeJS", "ExpressJS", "PM", "Vue",       "Security", "Lead Designer", "Laravel", "Go", "JavaScript", "React", "Backend", "Team Lead", "Adobe Photoshop", "Adobe After Effects", "Adobe Premiere", "Angular JS", "Angular 2", "Angular 4", "C", "C++", "TypeScript", "Digital Photograpy", "Visual Effects", "Objective C", "Elixir", "iOS", "MySQL", "Web Designer", "HTML", "CSS", "Python", "Rails", "ReactJS", "AEM", "HTL", "Ruby", "CSS3", "HTML5"].sample(4),
    tag_list: [".NET", "C Sharp", "Visual Basic", "Web Design", "Java", "Bootstrap3", "Laravel5", "Invisionapp", "FrontEnd", "Lead Team", "Sketchapp", "PHP", "AngularJS", "Rails.", "Azure", "Premiere", "Google Web Designer", "Senior Developer", "English", "Photoshop", "InVision", "Developer", "Junior", "jQuery", "Angular", "Illustrator", "Mongo", "Express", "Ajax", "SCRUM", "SQL Server", "Service Manager", "SOFTEK", "Kendo", "MongoDB", "NodeJS", "ExpressJS", "PM", "Vue", "Security", "Lead Designer", "Laravel", "Go", "JavaScript", "React", "Backend", "Team Lead", "FullStack", "C", "C++", "Objective C", "Elixir", "iOS", "Referral", "MySQL", "Web Designer", "HTML", "CSS", "Python", "Rails", "ReactJS", "Ruby", "CSS3", "HTML5"].sample(4)
  )
end
