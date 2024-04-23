class NotFoundError < BaseError
  def initialize(error, error_message)
    super error, error_message, :not_found
  end
end
