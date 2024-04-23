class UnauthorizedError < BaseError
  def initialize(error, error_message)
    super error, error_message, :unauthorized
  end
end
