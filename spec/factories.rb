FactoryGirl.define do
  factory :user do
    name      "Dinesh"
    email     "dinesh.gadge@gmail.com"
    password  "foobar"
    password_confirmation "foobar"
  end
end