class Api::V1::ApiController < ApplicationController
  # before_action :authenticate_user!

  include ErrorRaiser
  include Pundit
  include ResponseRenderer

  rescue_from BaseError, with: :render_base_error
  rescue_from ActiveRecord::RecordInvalid, with: :render_record_invalid_error
  rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found_error
  rescue_from Pundit::NotAuthorizedError, with: :render_pundit_not_authorized_error
end
