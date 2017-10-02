require_relative '../config/environment.rb'

class Message < ActiveRecord::Base
  belongs_to :client
  validates :text, presence: true
  validates :client_id, presence: true

  def sender
    outbound ? "CNYCN" : client.first_name
  end
end
