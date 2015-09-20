class User < ActiveRecord::Base
  validates :name, presence: true,
                   format: { with: /\A[a-zA-Z]+\z/, message: "only allows uppercase and lowercase letters"}
  validates :email, presence: true, uniqueness: true
  has_secure_password

end
