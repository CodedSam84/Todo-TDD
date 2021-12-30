class ApplicationController < ActionController::Base
  def authenticate
    redirect_to new_session_path unless user_signed_in?
  end

  def user_signed_in?
    session[:current_email].present?
  end
end
