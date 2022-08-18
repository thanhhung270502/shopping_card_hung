class User < ApplicationRecord
    has_secure_password

    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, massage: "must be a valid email address" }
    validates :name, presence: true, length: { maximum: 50 }
end
