FactoryBot.define do
  id = rand(10)
  factory :manuscript do
    title Faker::Book.title
    discipline_id id
  end
end
