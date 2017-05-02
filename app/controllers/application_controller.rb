class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def determine_ip
    # use HTTP_X_FORWARDED_FOR if available
    # otherwise fall back to default header
    request.env["HTTP_X_FORWARDED_FOR"] && request.env["HTTP_X_FORWARDED_FOR"].split(",")[0] || request.remote_addr
  end
  
end
