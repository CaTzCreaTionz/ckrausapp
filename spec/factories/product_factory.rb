FactoryBot.define do
    sequence(:name) { |n| "#{n}" }

    factory :product do
      name
      price { 10.0 }
      description { "Awesome cream" }
    end

  end
