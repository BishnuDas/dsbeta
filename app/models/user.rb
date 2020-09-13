class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :properties
  # has_many :pictures, as: :imageable
  
  # ===================================
  # devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
end
