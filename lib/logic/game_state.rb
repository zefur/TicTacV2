module UltimateTicTac
    class GameState
        def initialize
            @state = {
            0=>{0=>nil, 1=>nil,2=> nil,3=> nil,4=> nil,5=>nil,6=>nil,7=>nil,8=>nil} ,
            1=>{0=>nil, 1=>nil,2=> nil,3=> nil,4=> nil,5=>nil,6=>nil,7=>nil,8=>nil} ,
            2=>{0=>nil, 1=>nil,2=> nil,3=> nil,4=> nil,5=>nil,6=>nil,7=>nil,8=>nil} ,
            3=>{0=>nil, 1=>nil,2=> nil,3=> nil,4=> nil,5=>nil,6=>nil,7=>nil,8=>nil} ,
            4=>{0=>nil, 1=>nil,2=> nil,3=> nil,4=> nil,5=>nil,6=>nil,7=>nil,8=>nil} , 
            5=>{0=>nil, 1=>nil,2=> nil,3=> nil,4=> nil,5=>nil,6=>nil,7=>nil,8=>nil} ,
            6=>{0=>nil, 1=>nil,2=> nil,3=> nil,4=> nil,5=>nil,6=>nil,7=>nil,8=>nil}, 
            7=>{0=>nil, 1=>nil,2=> nil,3=> nil,4=> nil,5=>nil,6=>nil,7=>nil,8=>nil} ,
            8=>{0=>nil, 1=>nil,2=> nil,3=> nil,4=> nil,5=>nil,6=>nil,7=>nil,8=>nil}
            }
                
              
            # @games = {
            #     "1": {
            #         active: true,
            #         finished: false
            #     },
            #     "2": {
            #         active: true,
            #         finished: false
            #     },
            #     "3": {
            #         active: true,
            #         finished: false
            #     },
            #    "4": {
            #         active: true,
            #         finished: false
            #     },
            #     "5": {
            #         active: true,
            #         finished: false
            #     },
            #     "6": {
            #         active: true,
            #         finished: false
            #     },
            #     "7": {
            #         active: true,
            #         finished: false
            #     },
            #     "8": {
            #         active: true,
            #         finished: false
            #     },
            #     "9": {
            #         active: true,
            #         finished: false
            #     }
            # }
        end

        # def [](game,cell)
        #     @state[game.to_s][cell.to_s]
        # end

        def begin
            puts "game state"
        end

        def playable(game, cell)
            unless @state[game][cell].nil? 
                puts "sorry cannot be played here"
            end
        end
        
        def update_state(player, move)
            

        end

        
    end
end