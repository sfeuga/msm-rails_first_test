# frozen_string_literal: true

json.extract! user, :id, :firstname, :lastname, :billing_name, :address, :zip_code, :city, :primary_phone_number, :secondary_phone_number, :email, :emergency_contact_name, :emergency_phone_number, :signup_date, :professor?, :created_at, :updated_at
json.url user_url(user, format: :json)
