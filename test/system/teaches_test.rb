# frozen_string_literal: true

require 'application_system_test_case'

class TeachesTest < ApplicationSystemTestCase
  setup do
    @teach = teaches(:one)
  end

  test 'visiting the index' do
    visit teaches_url
    assert_selector 'h1', text: 'Teaches'
  end

  test 'creating a Teach' do
    visit teaches_url
    click_on 'New Teach'

    fill_in 'Course', with: @teach.course_id
    fill_in 'User', with: @teach.user_id
    click_on 'Create Teach'

    assert_text 'Teach was successfully created'
    click_on 'Back'
  end

  test 'updating a Teach' do
    visit teaches_url
    click_on 'Edit', match: :first

    fill_in 'Course', with: @teach.course_id
    fill_in 'User', with: @teach.user_id
    click_on 'Update Teach'

    assert_text 'Teach was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Teach' do
    visit teaches_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Teach was successfully destroyed'
  end
end
