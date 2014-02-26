class User < ActiveRecord::Base
  has_secure_password
  has_many :comments
  has_many :posts

  validates :username, uniqueness: :true, presence: :true

  def self.check(username, password)
    User.where(username: username).first.authenticate(password)
  end
end
