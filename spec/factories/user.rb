FactoryGirl.define do
  factory :user do
    username "robotface"
    name "Robert"
    email "hello@me.com"
    password "secret1234"
    password_confirmation "secret1234"
  end
end