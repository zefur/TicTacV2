# frozen_string_literal: true

class UnitComponent < ViewComponentReflex::Component
  def initialize(attributes = {})
    @@me = attributes[:game_id]
    @game_id = attributes[:game_id]
    @board= attributes[:board]
    @colour = "bg-blue-#{@game_id}00"
    @state = @board.state[ @game_id - 1]
  end

  def update_cell
   
  end
  
end
