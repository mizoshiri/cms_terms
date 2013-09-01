# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :note do
    title "MyTitle"
    content "MyContent"
    user_id 1
  end
  
  factory :fail_note do
    content "MyContent"
    user_id 1
  end
end
