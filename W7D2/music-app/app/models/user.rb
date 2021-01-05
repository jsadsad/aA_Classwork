class User < ApplicationRecord

  # SPIRE
  # 1. self.find_by_credentials
  # 2. password=(password)
  # 3. is_password?(password)
  # 4. reset_session_token
  # 5. ensure_session_token

  def generate_session_token
    session_token ||= SecureRandom::url_base64
  end

  def reset_session_token
    self.session_token = SecureRandom::url_base64
    self.save! #fail loud
    self.session_token
  end

  def password=(password)
    @password = password # validates the password given.
    password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end
end
