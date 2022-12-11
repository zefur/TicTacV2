# frozen_string_literal: true

class UnitComponent < ViewComponent::Base
  def initialize(attributes = {})
    @game_id = attributes[:game_id]
    @board= attributes[:board]
  end
end
