# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :variant do
    sku "MyString"
    price "9.99"
    cost "9.99"
    deleted_at "2013-10-23 09:03:22"
    master false
    count_pending_to_customer 1
  end
end
