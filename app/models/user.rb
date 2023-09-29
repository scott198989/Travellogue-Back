class User < ApplicationRecord
    has_many :trips

    devise  :database_authenticatable, :registerable,
    :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist

    validates :email, :password, presence: true
end
