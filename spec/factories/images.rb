# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :image do
    imageable_id 1
    imageable_type "MyString"
    image_height 1
    image_width 1
    photo_file_name "MyString"
    photo_content_type "MyString"
    photo_file_size 1
    photo_updated_at "2013-10-21 14:53:55"
  end
end
