FactoryGirl.define do
  sequence(:email) { |n| "user#{n}@example.com" }
  factory :user do
    email
    password "12345678"
    first_name "Foo"
    last_name "Bar"
    admin false
  end

  factory :useralso do
    email
    password "87654321"
    first_name "Also"
    last_name "Bar"
    admin false
  end

  factory :admin, class: User do
    email
    password "97643119"
    admin true
    first_name "Admin"
    last_name "User"
  end

end