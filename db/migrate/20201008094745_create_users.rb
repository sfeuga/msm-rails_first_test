# frozen_string_literal: true

###
# Create Users Class
#
class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :billing_name
      t.string :address
      t.string :zip_code
      t.string :city
      t.string :primary_phone_number
      t.string :secondary_phone_number
      t.string :email
      t.string :emergency_contact_name
      t.string :emergency_phone_number
      t.date :signup_date
      t.boolean :professor?

      t.timestamps
    end
  end
end
