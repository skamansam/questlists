# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :list_item do
    name "MyString"
    description "MyText"
    icon "MyString"
    created_by 1
    list_id 1
  end
end
