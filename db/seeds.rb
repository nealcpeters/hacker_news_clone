#make some users
10.times do |num|
  User.create(username: "Person#{num}", password: "#{num}#{num}#{num}#{num}", password_confirmation: "#{num}#{num}#{num}#{num}")
end
10.times do |num|
  Post.create(user_id: User.all.sample.id, title: Faker::Company.bs, content: Faker::Lorem.paragraph(4))
end
40.times do |num|
  Comment.create(post_id: Post.all.sample.id, user_id: User.all.sample.id, content: Faker::Company.bs + " " + Faker::Company.catch_phrase)
end
