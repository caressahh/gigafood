FactoryGirl.define do
  factory :order do
    name "MyString"
    description "MyText"
    price 1
    order_date "2017-09-09 10:15:58"
    delivery_date "2017-09-09 10:15:58"
    address "MyText"
    phone "MyString"
    allergies "MyText"
  end
end
