FactoryBot.define do
  factory :blog_post do
    title { Faker::Book.title }
    text { Faker::Lorem.paragraph }
  end
end
