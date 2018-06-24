FactoryBot.define do
  factory :manuscript do
    title Faker::Book.title
    discipline
  end

  factory :discipline do
    name Faker::Book.title

    factory :discipline_with_manuscripts do
      after(:create) do |discipline, evaluator|
        create_list(:manuscript, 1, discipline: discipline)
      end
    end

  end
end
