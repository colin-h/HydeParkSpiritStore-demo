# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    name "MyString"
    description "MyText"
    permalink "MyString"
    active false
    available_at "2013-10-18 09:23:22"
    deleted_at "2013-10-18 09:23:22"
  end
end
