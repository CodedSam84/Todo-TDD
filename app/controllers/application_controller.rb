class ApplicationController < ActionController::Base
  def authenticate
    redirect_to new_session_path unless user_signed_in?
  end

  def user_signed_in?
    current_user.signed_in?
  end

  def sign_in_as(email)
    session[:current_email] = email
  end

  def current_user
    User.new(session[:current_email])
  end
end
