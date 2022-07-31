class Room < ApplicationRecord
  has_many :messages
  belongs_to :home
  
  broadcasts

  after_create_commit -> { broadcast_update_to "messages_counter", partial: "messages/counter", locals: { message: self }, target: "messages_counter" }

end
