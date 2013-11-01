# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :image do
    created_by 1
    image "MyString"
    name "MyString"
    description "MyText"
  end
end
