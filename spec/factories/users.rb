FactoryGirl.define do
  factory :valid_user, class: User do
    email     'test@test.org'
    password  'testtest2000'
    api_key   '0CeiNwhWX5k3qAnGPMW9FQtt'
  end

end
