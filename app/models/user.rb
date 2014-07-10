class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  # A user has his personal information
  has_one :personal
  # A user has his academic information
  has_one :academic
  # user will have one application
  has_one :application
  # user has one rank
  has_one :rank
  # to use simple captcha
end
