# This will guess the Order class
FactoryBot.define do
  factory :order do
    user factory: :user
  end
end
