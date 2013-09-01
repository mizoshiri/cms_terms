# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "ayumi@sazae.com.au"
    password "password"
    admin true
  end
end
