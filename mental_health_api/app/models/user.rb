class User < ApplicationRecord
    has_secure_password
    has_many :medications
    has_many :insurances
    has_many :behaviors
end
