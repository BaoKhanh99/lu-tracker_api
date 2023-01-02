# frozen_string_literal: true

class Api::V1::SessionsController < Devise::SessionsController
  before_action :load_user_authentication

  def create
    sign_in @user, store: false

    render json: @user, status: :ok
  end

  private

  def user_params
    params.require(:user).permit :email, :password
  end
end
