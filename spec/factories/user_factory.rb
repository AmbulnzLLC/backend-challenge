# This will guess the User class
FactoryBot.define do
  factory :user do
    email { "john.wick@test.com" }
    role { :user }
  end

  factory :admin, class: 'User' do
    email { "admin@test.com" }
    role { :admin }
  end
end
