class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable, :omniauthable, 
  devise :database_authenticatable, :recoverable, :registerable,
         :rememberable, :validatable
end
