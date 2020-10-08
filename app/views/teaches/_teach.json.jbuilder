# frozen_string_literal: true

json.extract! teach, :id, :user_id, :course_id, :created_at, :updated_at
json.url teach_url(teach, format: :json)
