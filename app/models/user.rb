class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # validates :name, presence: true
  has_many :sublistings
  has_many :aptlistings
  # validates :name, presence: true
  # validates :email, presence: true, uniqueness: true
  #MAKE SURE TO VALIDATE EMAIL WHEN IT'S ADDED
end
