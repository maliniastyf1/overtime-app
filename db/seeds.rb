@user = User.create(email: "adam@test.com", password: "qwerty", password_confirmation: "qwerty", first_name: "Adam", last_name: "Malyn")
AdminUser.create(email: "myadmin@test.com", password: "qwerty", password_confirmation: "qwerty", first_name: "Adam", last_name: "Malyn")
puts "1 user and admin user created"
100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationel content", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Posts have been created"