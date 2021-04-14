class User < ApplicationRecord
  before_create :confirmation_token

  before_save { self.email = email.downcase }
  has_many :articles, dependent: :destroy
  validates :username, presence: true, 
            uniqueness: { case_sensitive: false }, 
            length: { minimum: 3, maximum: 25 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, 
            uniqueness: { case_sensitive: false }, 
            length: { maximum: 105 },
            format: { with: VALID_EMAIL_REGEX }
  has_secure_password

  def email_activate
    self.email_confirmed = true
    self.confirm_token = nil
    save!
  end

  private
  def confirmation_token
    self.confirm_token = SecureRandom.urlsafe_base64.to_s
  end

end
