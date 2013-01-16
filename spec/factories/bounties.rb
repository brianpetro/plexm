# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :bounty do
    user_id 1
    title "MyString"
    body "MyText"
    bounty 1
  end
end
