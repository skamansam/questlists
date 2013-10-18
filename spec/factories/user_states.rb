# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_state do
    state_for_type "MyString"
    state_for_id 1
  end
end
