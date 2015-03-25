class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :set_tracking_cookie
  def set_tracking_cookie
    cookies.permanent[:user_uuid] = SecureRandom.uuid unless cookies[:user_uuid]
  end

  def set_user_status
    cookies.permanent[:status] = status_choice unless cookies.permanent[:status]
  end

  def status_choice
    "pregnant"
  end
  protect_from_forgery with: :exception
end
