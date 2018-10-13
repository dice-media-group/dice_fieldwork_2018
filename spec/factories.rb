FactoryBot.define do
  factory :consultation do
    user { nil }
    account { nil }
  end
  factory :address do
    street_one { "MyString" }
    street_two { "MyString" }
    city { "MyString" }
    state { "MyString" }
    postal_code { "MyString" }
    is_billing { false }
    addressable { nil }
  end
  factory :geo_location do
    
  end
  factory :default_address do
    
  end
  factory :account do
    first_name { "MyString" }
    last_name { "MyString" }
    email { "MyString" }
    boolean { "" }
    primary_phone_number { "MyString" }
    secondary_phone_number { "MyString" }
    mobile_phone { "MyString" }
    fax { "MyString" }
    boolean { "" }
    referral_source { "MyString" }
    company_name { "MyString" }
    account_ref_number { "MyString" }
  end
  factory :user do
    
  end
end
