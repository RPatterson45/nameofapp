FactoryGirl.define do
  sequence(:email) { |n| "test#{n}@fakeemail.com" }
  sequence(:password) { |n| "123456#{n}" }
  sequence(:first_name) { |n| "John#{n}" }
  sequence(:last_name) { |n| "Doe#{n}" }
  
  factory :user do |u|
    email
    password
    first_name
    last_name
    admin false
  end

  factory :admin, class: User do
    email
    password
    first_name
    last_name
    admin true
  end
end