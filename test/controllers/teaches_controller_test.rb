# frozen_string_literal: true

require 'test_helper'

class TeachesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teach = teaches(:one)
  end

  test 'should get index' do
    get teaches_url
    assert_response :success
  end

  test 'should get new' do
    get new_teach_url
    assert_response :success
  end

  test 'should create teach' do
    assert_difference('Teach.count') do
      post teaches_url, params: { teach: { course_id: @teach.course_id, user_id: @teach.user_id } }
    end

    assert_redirected_to teach_url(Teach.last)
  end

  test 'should show teach' do
    get teach_url(@teach)
    assert_response :success
  end

  test 'should get edit' do
    get edit_teach_url(@teach)
    assert_response :success
  end

  test 'should update teach' do
    patch teach_url(@teach), params: { teach: { course_id: @teach.course_id, user_id: @teach.user_id } }
    assert_redirected_to teach_url(@teach)
  end

  test 'should destroy teach' do
    assert_difference('Teach.count', -1) do
      delete teach_url(@teach)
    end

    assert_redirected_to teaches_url
  end
end
