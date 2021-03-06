class User < ApplicationRecord
  include DeviseTokenAuth::Concerns::User
  devise  :database_authenticatable, :registerable, :recoverable, :rememberable,
          :trackable, :validatable # , :confirmable, :omniauthable

  has_many :rents, dependent: :nullify

  validates :first_name, :last_name, presence: true
end
