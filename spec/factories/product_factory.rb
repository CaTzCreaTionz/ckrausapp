FactoryBot.define do
    sequence(:name) { |n| "#{n}" }

    factory :product do
      name
      price { 10.0 }
      description { "Anything" }
      long_description { "Anything" }
      ingredients { "Anything" }
      how_to_use { "Anything" }
      image_url { "Anything" }
    end

  end
