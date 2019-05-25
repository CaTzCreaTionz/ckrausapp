FactoryBot.define do
  sequence(:email) {|n| "test#{n}@example.com"}
  factory :user do
    email
    password { "123456" }
    first_name { "Someone" }
    last_name { "Great" }
    admin { false }
  end

  factory :admin, class: User do
    email
    password { "123456" }
    first_name { "Someone" }
    last_name { "Great" }
    admin { true }
  end
end
