@employee = Employee.create(email: "adam@test.com",
                    password: "qwerty",
                    password_confirmation: "qwerty",
                    first_name: "Adam",
                    last_name: "Malyn",
                    phone: "799449722")

puts "1 user created"

AdminUser.create(email: "myadmin@test.com",
                 password: "qwerty",
                 password_confirmation: "qwerty",
                 first_name: "Adam",
                 last_name: "Malyn",
                 phone: "799449722")

puts "1 admin user created"

100.times do |post|
  Post.create!(date: Date.today,
               rationale: "#{post} rationel contentNeque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit
                Nie ma nikogo, kto lubiłby ból dla samego bólu, szukał go tylko po to, by go poczuć, po prostu dlatego, że to ból",
               user_id: @employee.id,
               overtime_request: 2.5)
end

puts "100 Posts have been created"


  AuditLog.create(user_id: @employee.id, status: 0, start_date: (Date.today - 6.days))
  AuditLog.create(user_id: @employee.id, status: 0, start_date: (Date.today - 13.days))
  AuditLog.create(user_id: @employee.id, status: 0, start_date: (Date.today - 20.days))


puts "3 Audit logs have been created"