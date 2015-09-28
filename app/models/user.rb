class User < ActiveRecord::Base
  has_many :todos

  validates :name, presence: true
  #validates :email, presence: true
  #validates :password, presence: true
  #validates :password_confirmation, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable
end
