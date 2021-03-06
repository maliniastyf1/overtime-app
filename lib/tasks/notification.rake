namespace :notification do
  desc "Send SMS to employees asking them to log if they had overtime or not"
  task sms: :environment do
    if Time.now.sunday?
     # 4. Send a message that has instructions and link to log time
      employees = Employee.all
      notification_message = "Please log into the overtime management dashboard to request overtime or confirm your hours for last week: https://omg-overtime.herokuapp.com"
      employees.each do |employee|
        SmsTool.send_sms( number: employee.phone, message: notification_message)
      end
    end
  end

  desc "Send mail notification to managers(admin users) each day to inform of pending overtime requests"
  task manager_email: :environment do
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_later
      end
    end
  end
end
