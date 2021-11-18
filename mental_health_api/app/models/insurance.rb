class Insurance < ApplicationRecord
  belongs_to :user
  has_many :providers
end
