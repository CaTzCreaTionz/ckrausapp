FactoryBot.define do
  sequence(:email) {|n| "test#{n}@example.com"}
  factory :user do
    email
    password { "123456" }
    first_name { "Nick" }
    last_name { "Kraus" }
    admin { false }
  end

  factory :admin do
    email
    password { "123456" }
    first_name { "Nick" }
    last_name { "Kraus" }
    admin { true }
  end
end
