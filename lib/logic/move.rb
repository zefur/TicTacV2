
module UltimateTicTac
class Moves
    def initialize()
        @current_move
        @move_history = []
    end

    

def check_move(game_state, move)
    if @board.cell_active
    if @board.state[move].nil?

    else
    # if false needs to return this cell is already used type message

    end
    else
        # need to return cannot play in this box flash/alert
        false 

    end

end

def make_move(move)
    if check_move(move)
        place_mark(move)
    end
end

def place_mark
    
end
end
end