class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true

  has_many :goals,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :Goal

  # SPIRE

  attr_reader :password

  before_validation :ensure_session_token

  def self.find_by_credentials(username, pw)
    user = User.find_by(id: params[:id])
    return nil unless user
    user.is_password?(pw) ? user : nil
  end

  def password=(new_pw)
    @password = new_pw
    self.password_digest = BCrypt::Password.create(new_pw)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(pw)
  end

  def reset_session_token!
    self.session_token = SecureRandom::urlsafe_base64
    self.save!
    self.session_token
  end

  private

  def ensure_session_token
    self.session_token ||= SecureRandom::urlsafe_base64
  end
end
