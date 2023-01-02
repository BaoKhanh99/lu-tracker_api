# frozen_string_literal: true

class ApplicationController < ActionController::API
  def load_user_authentication
    @user = User.find_by email: user_params[:email]
  end
end
