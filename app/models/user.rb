class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # removed options: 
  # :recoverable, :registerable,
  devise :database_authenticatable, :rememberable, :validatable
end
