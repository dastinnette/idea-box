class User < ActiveRecord::Base
  validates :name, presence: true,
                   format: { with: /\A[a-zA-Z]+\z/, message: "only allows uppercase and lowercase letters"}
  validates :email, presence: true,
                    uniqueness: true,
                    length: { in: 5..50 }
  has_secure_password

end
