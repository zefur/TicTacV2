# frozen_string_literal: true

class BoardComponent < ViewComponent::Base

    def initialize(attributes = {})
        @gameroom = attributes[:gameroom]

    end

end
