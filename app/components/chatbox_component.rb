# frozen_string_literal: true

class ChatboxComponent < ViewComponent::Base

    def initialize(attr = {})
        @room = attr[:gameroom]
    end

end