# made seeds.rb by myself if anything goes wrong 

99.times do |n|
  username  = Faker::Internet.user_name
  email = "kiwi-#{n+1}@gmail.com"
  password = "password"
  User.create!(username:  username,
               email: email,
               password:              password,
               password_confirmation: password)
end

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.posts.create!(content: content) }
end
