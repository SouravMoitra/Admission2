class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  # A user has his personal information
  has_one :personal, dependent: :destroy
  # A user has his academic information
  has_one :academic, dependent: :destroy
  # user will have one application
  has_one :application, dependent: :destroy
  # user has one rank
  has_one :rank, dependent: :destroy
  # to use simple captcha
end
