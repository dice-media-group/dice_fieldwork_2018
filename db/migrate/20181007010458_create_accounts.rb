class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :no_customer_email_address
      t.string :primary_phone_number
      t.string :secondary_phone_number
      t.string :mobile_phone
      t.string :fax
      t.boolean :is_business
      t.string :referral_source
      t.string :company_name
      t.string :account_ref_number

      t.timestamps
    end
  end
end
