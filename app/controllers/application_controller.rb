class ApplicationController < ActionController::Base
  before_action :authenticate_user!

 def destroy
    session[:user_id] = nil
    redirect_to destroy_user_session_path, notice: 'Logged out!'
  end
end