class User < ApplicationRecord
  ROLES = { customer: 0, manager: 1 }.freeze

  # Include default devise modules. Others available are:
  # :lockable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :timeoutable, :validatable

  has_many :orders

  enum role: ROLES
end
