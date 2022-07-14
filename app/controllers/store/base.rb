class Store::Base < ApplicationController
  private def current_user
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end
  end

  helper_method :current_user
end
