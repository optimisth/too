class AdminController < ActionController::Base
  protect_from_forgery with: :exception
  http_basic_authenticate_with name: "admin", password: "secret"

end
