# frozen_string_literal: true

class MessageComponent < ViewComponent::Base
  def initialize(attr = {})
    @message = attr[:message]
    @player = attr[:player]
  end
end
