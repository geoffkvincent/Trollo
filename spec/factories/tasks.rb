FactoryBot.define do
  factory :task do
    name { "MyString" }
    body { "MyText" }
    list { nil }
  end
end
