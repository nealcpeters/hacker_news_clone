#make some users
10.times do |num|
  User.create(username: "Person#{num}", password: "#{num}#{num}#{num}#{num}", password_confirmation: "#{num}#{num}#{num}#{num}")
end
10.times do |num|
  Post.create(user_id: User.all.sample.id,title: Faker::Company.bs,content: Faker::Lorem.paragraph(4))
end
