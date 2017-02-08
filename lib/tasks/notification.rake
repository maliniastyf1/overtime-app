namespace :notification do
  desc "Send SMS to employees asking them to log if they had overtime or not"
  task sms: :environment do
    puts 'I am in rake task!'
  end

end
