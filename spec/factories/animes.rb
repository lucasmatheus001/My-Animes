FactoryBot.define do
  factory :anime do
    user_id { 1 }
    name { Faker::Name.name }
    description { Faker::Lorem.paragraph(sentence_count: 10) }
    image_url { Faker::LoremPixel.image }
    genres { Faker::Lorem.words(number: 3) }
    episodes { Faker::Number.between(from: 1, to: 100) }
    studios { Faker::Lorem.words(number: 10) }
    duration { Faker::Number.between(from: 1, to: 80) }
    situation { Faker::Lorem.words(number: 10) }
  end
end
