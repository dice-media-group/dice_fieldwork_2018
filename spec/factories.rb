FactoryBot.define do
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
