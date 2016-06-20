FactoryGirl.define do 
  factory :user do 
    email "test@test.com"
    password "testtest"
    first_name "John"
    last_name "Smith"
    admin false
  end
end