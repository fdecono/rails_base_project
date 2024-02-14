class ForbiddenError < BaseError
  def initialize(error, error_message)
    super error, error_message, :forbidden
  end
end
