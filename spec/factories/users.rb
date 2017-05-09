FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "Email-#{n}@email.com"
    end
    sequence :password do |n|
        "Password-#{n}"
    end
  end
end
