# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :image do
    album_id 1
    description "MyText"
    title "MyString"
  end
end
