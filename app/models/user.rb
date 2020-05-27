# frozen_string_literal: true

class User < ApplicationRecord
    has_secure_password

    
    has_many :assignments
    has_many :roles, through: :assignments

    validates :name, presence: true
    validates :email, presence: true, email: true, uniqueness: true
    validates :password_digest, presence: true
end
