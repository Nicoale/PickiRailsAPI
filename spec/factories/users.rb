FactoryBot.define do
  factory :user do
    name { Faker::Internet.name }
    email { Faker::Internet.safe_email }
    password_digest { Faker::Internet.password }
  end
end
