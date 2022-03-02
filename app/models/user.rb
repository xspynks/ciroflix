class User < ApplicationRecord
  enum role: [:normal_user, :admin]
  
  # Include default devise modules. Others available are:
  # :registerable, :confirmable, :lockable, :timeoutable, trackable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :validatable
end
