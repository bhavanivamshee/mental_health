class Behavior < ApplicationRecord
  belongs_to :user
  has_many :conditions
end
