# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :simple_product do
    sku "MyString"
    price "9.99"
    cost "9.99"
  end
end
