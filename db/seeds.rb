@user = User.create(email: "adam@test.com", password: "qwerty", password_confirmation: "qwerty", first_name: "Adam", last_name: "Malyn")

puts "1 user created"
100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationel content", user_id: @user.id)
end

puts "100 Posts have been created"