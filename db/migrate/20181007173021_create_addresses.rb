class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :street_one
      t.string :street_two
      t.string :city
      t.string :state
      t.string :postal_code
      t.boolean :is_billing
      t.references :addressable, polymorphic: true

      t.timestamps
    end
  end
end
