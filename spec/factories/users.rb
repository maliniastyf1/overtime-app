FactoryGirl.define do
  sequence :email do |n|
    "admin_#{n+1}@factory.com"
  end

  factory :user do
    first_name "Adam"
    last_name "Malyn"
    email { generate :email }
    password "qwerty"
    password_confirmation "qwerty"
    phone "+48511111111"
  end

  factory :admin_user, class: "AdminUser" do
    first_name "Admin"
    last_name "User"
    email { generate :email }
    password "qwerty"
    password_confirmation "qwerty"
    phone "+48511111111"
  end

  factory :non_authorized_user, class: "User" do
    first_name "Non"
    last_name "Authorized"
    email { generate :email }
    password "qwerty"
    password_confirmation "qwerty"
    phone "+48511111111"
  end
end

