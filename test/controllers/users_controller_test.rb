# frozen_string_literal: true

require 'test_helper'

###
# Users Controller Test Class
#
class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test 'should get index' do
    get users_url
    assert_response :success
  end

  test 'should get new' do
    get new_user_url
    assert_response :success
  end

  test 'should create user' do
    assert_difference('User.count') do
      post users_url, params: { user: { address: @user.address, city: @user.city, zip_code: @user.zip_code,
                                        firstname: @user.firstname, lastname: @user.lastname,
                                        billing_name: @user.billing_name,
                                        email: @user.email,
                                        emergency_contact_name: @user.emergency_contact_name,
                                        emergency_phone_number: @user.emergency_phone_number,
                                        primary_phone_number: @user.primary_phone_number,
                                        secondary_phone_number: @user.secondary_phone_number,
                                        professor?: @user.professor?,
                                        signup_date: @user.signup_date } }
    end

    assert_redirected_to user_url(User.last)
  end

  test 'should show user' do
    get user_url(@user)
    assert_response :success
  end

  test 'should get edit' do
    get edit_user_url(@user)
    assert_response :success
  end

  test 'should update user' do
    patch user_url(@user), params: { user: { address: @user.address, city: @user.city, zip_code: @user.zip_code,
                                             firstname: @user.firstname, lastname: @user.lastname,
                                             billing_name: @user.billing_name,
                                             email: @user.email,
                                             emergency_contact_name: @user.emergency_contact_name,
                                             emergency_phone_number: @user.emergency_phone_number,
                                             primary_phone_number: @user.primary_phone_number,
                                             secondary_phone_number: @user.secondary_phone_number,
                                             professor?: @user.professor?,
                                             signup_date: @user.signup_date } }
    assert_redirected_to user_url(@user)
  end

  test 'should destroy user' do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
