FactoryGirl.define do
  factory :comment do
    sequence(:body) { |n| "#{n}body" }
    video
  end
end
