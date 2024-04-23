module ErrorRaiser
  def error(error_name, error_message, error = BaseError)
    raise error.new(error_name, error_message)
  end

  def forbidden_error(error_name, error_message)
    error(error_name, error_message, ForbiddenError)
  end

  def unauthorized_error(error_name, error_message)
    error(error_name, error_message, UnauthorizedError)
  end

  def not_found_error(error_name, error_message)
    error(error_name, error_message, NotFoundError)
  end

  def server_error(error_name, error_message)
    error(error_name, error_message, ServerError)
  end
end
