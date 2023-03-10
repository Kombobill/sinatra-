require 'bcrypt'

class User < ActiveRecord::Base
  has_many :projects
  has_many :skills

  includes 'bcrypt'

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

  has_secure_password

  end
  