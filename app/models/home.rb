class Home < ApplicationRecord
  has_many :videos
  has_many :messages
end
