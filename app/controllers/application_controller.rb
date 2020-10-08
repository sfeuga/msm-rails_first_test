# frozen_string_literal: true

###
# Main Application Controller
#
class ApplicationController < ActionController::Base
  def index
    render html: 'Music School Management App'
  end
end
