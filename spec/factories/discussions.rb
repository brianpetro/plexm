# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :discussion do
    discussion "MyText"
    user_id 1
    bounty_id 1
  end
end
