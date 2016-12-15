FactoryGirl.define do
  factory :post do
    date Date.today
    rationale "Some content"
    user
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    rationale "Some more content"
    admin_user
  end
end