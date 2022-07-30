class Message < ApplicationRecord
  belongs_to :room
  belongs_to :home
  broadcasts_to :room
end
