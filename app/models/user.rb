class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :categories, :dependent => :destroy
  has_many :tasks, through: :categories
validates :username, :email, presence: true
validates :username, :email, uniqueness: true
validates :password, presence: true
end