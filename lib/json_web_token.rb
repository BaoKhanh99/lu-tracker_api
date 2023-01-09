# frozen_string_literal: true

class JsonWebToken
  PRIVATE_KEY = OpenSSL::PKey.read File.read ENV.fetch("PRIVATE_KEY_PATH")
  PUBLIC_KEY = OpenSSL::PKey.read File.read ENV.fetch("PUBLIC_KEY_PATH")

  class << self
    def encode payload
      JWT.encode payload, PRIVATE_KEY, Settings.json_web_token.algorithm
    end

    def decode token
      JWT.decode token, PUBLIC_KEY, true, {algorithm: Settings.json_web_token.algorithm}
    end
  end
end
