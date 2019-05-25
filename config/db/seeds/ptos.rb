((Date.today - 15)..(Date.today)).to_a.each do |date|
  User.where(full_time_role: true).each do |user|
    Pto.find_or_create_by(user:user, date:date)
  end
end
