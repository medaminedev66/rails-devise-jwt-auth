class JsonWebToken
  def self.encode(payload)
    expiration_time = 1.week.from_now.to_i
    payload[:exp] = expiration_time
    JWT.encode(payload, Rails.application.secrets.secret_key_base)
  end

  def self.decode(token)
    decoded = JWT.decode(token, Rails.application.secrets.secret_key_base)[0]
    HashWithIndifferentAccess.new(decoded)
  rescue JWT::ExpiredSignature, JWT::VerificationError => e
    nil
  end
end
