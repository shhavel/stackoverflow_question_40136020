FactoryGirl.define do
  factory :post do
    sequence(:title) { |n| "#{n}title" }
    date Date.today.strftime('%m/%d/%Y')
    body Faker::Lorem.paragraph(3)
    tags Faker::Lorem.words(4)
    user

    trait :with_videos do
      after(:create) do |post|
        create(:video, :with_comments, post: post)
      end
    end
  end
end
