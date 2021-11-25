class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist     

  has_many :photo_galleries      

  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true, length: { in: 3..20 }
end
