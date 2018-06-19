class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :validatable
         # :recoverable, :rememberable, :trackable

  validates :email, :name, :password, :password_confirmation, presence: true
  validates :email, uniqueness: true


end
