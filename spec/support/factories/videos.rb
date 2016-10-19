FactoryGirl.define do
  factory :video do
    sequence(:title) { |n| "#{n}title" }
    sequence(:url) { |n| "https://www.youtube.com/watch?v=tYm_#{n}2oCVdSM" }
    post

    trait :with_comments do
      after(:create) do |video|
        create(:comment, video: video)
      end
    end
  end
end
