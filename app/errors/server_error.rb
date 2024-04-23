class ServerError < BaseError
  def initialize(error, error_message)
    super error, error_message, 500
  end
end
