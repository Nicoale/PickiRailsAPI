class SessionsController < ApplicationController
  include ActionController::Helpers
  include ActionController::Flash

  def new
  end

  def create
    user = User.find_by_email(params[:email])
  if user && user.authenticate(params[:password_digest])
    session[:user_id] = user.id
    redirect_to root_url, notice: "Logged in!"
  else
    alert = "Email or password is invalid"
    render "new"
  end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
