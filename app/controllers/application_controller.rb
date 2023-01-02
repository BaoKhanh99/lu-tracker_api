# frozen_string_literal: true

class ApplicationController < ActionController::API
  def load_user_authentication
    @user = User.find_by_email user_params[:email]
    return @user
  end
end
