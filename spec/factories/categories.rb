# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :category do
    name "MyString"
    parent nil
    ord 1
  end
end
