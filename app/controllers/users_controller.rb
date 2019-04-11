class UsersController < ApplicationController
  private
  def current_user
    User.where(id: session[:user_id]).first
  end
  helper_method :current_user
    def destroy
    session[:user_id] = current_user.id
    redirect_to destroy_user_session_path, notice: 'Logged out!'
  end
end

