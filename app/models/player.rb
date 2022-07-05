class Player < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  include CableReady::Broadcaster
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :messages
  after_create do
    cable_ready["visitors"] # send to everyone subscribed to the channel streaming from "visitors"
      .console_log(message: "Welcome #{self.name} to the site!") # all users will see a message appear in their browser's Console Inspector
      .broadcast # send all queued operations to all ExampleChannel subscribers
  end
end
