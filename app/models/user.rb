class User < ApplicationRecord
  has_many :spots
  has_many :events, through: :spots
end
