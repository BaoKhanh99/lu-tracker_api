# frozen_string_literal: true

class Api::GenerateTokenService
  def initialize user_id
    @user_id = user_id
  end

  def perform
    @payload = {}
    @payload[:user_id] = user_id
    @payload[:exp] = Time.now.to_i + Settings.generate_token.access_token_expires_in

    {
      access_token: JsonWebToken.encode(payload),
      refresh_token:
    }
  end

  private

  attr_reader :user_id, :payload

  def refresh_token
    @payload[:exp] = Time.now.to_i + Settings.generate_token.refresh_token_expires_in

    JsonWebToken.encode payload
  end
end
