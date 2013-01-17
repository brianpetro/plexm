# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :discussion_comment do
    comment "MyText"
    bounty_id 1
    discussion_id 1
  end
end
