class User < ActiveRecord::Base
  has_secure_password
  validates :name, :email, :role, presence: true


  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false}

  validates :password, length: { minimum: 6}

  def admin?
    self.role == 'admin'
  end
end
