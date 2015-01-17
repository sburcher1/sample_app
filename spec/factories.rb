
FactoryGirl.define do
  factory :user do
    email "sburcher1@gmail.com"
    companyname "Research24"
  end
end


FactoryGirl.define do
  factory :product do
    name "Test_Product"
    description "A test prodoct for rspec"
    image_url "http://www.testproducturl.com/test_image.jpg"
    price "15.5"
  end
end