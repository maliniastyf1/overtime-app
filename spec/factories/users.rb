FactoryGirl.define do
  factory :user do
    first_name "Adam"
    last_name "Malyn"
    sequence(:email) { |n| "user_#{n+1}@factory.com" }
    password "qwerty"
    password_confirmation "qwerty"
  end

  factory :admin_user, class: "AdminUser" do
    first_name "Admin"
    last_name "User"
    sequence(:email) { |n| "admin_#{n+1}@factory.com" }
    password "qwerty"
    password_confirmation "qwerty"
  end
end

