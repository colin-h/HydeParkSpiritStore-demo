# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address do
    first_name "MyString"
    last_name "MyString"
    address "MyString"
    city "MyString"
    state "MyString"
    zip_code "MyString"
    phone_number "MyString"
    alternative_phone "MyString"
    default false
  end
end
