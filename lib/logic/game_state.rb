module UltimateTicTac
    class GameState
        def initialize
            @state = [
                [nil,nil, nil, nil, nil,nil,nil,nil,nil] ,
                  [nil,nil, nil, nil, nil,nil,nil,nil,nil] ,
                  [nil,nil, nil, nil, nil,nil,nil,nil,nil] ,
                  [nil,nil, nil, nil, nil,nil,nil,nil,nil] ,
                  [nil,nil, nil, nil, nil,nil,nil,nil,nil] ,
                 [nil,nil, nil, nil, nil,nil,nil,nil,nil] ,
                  [nil,nil, nil, nil, nil,nil,nil,nil,nil] ,
                  [nil,nil, nil, nil, nil,nil,nil,nil,nil] ,
                 [nil,nil, nil, nil, nil,nil,nil,nil,nil] 
              ]
            @games = {
                "1": {
                    active: true,
                    finished: false
                },
                "2": {
                    active: true,
                    finished: false
                },
                "3": {
                    active: true,
                    finished: false
                },
               "4": {
                    active: true,
                    finished: false
                },
                "5": {
                    active: true,
                    finished: false
                },
                "6": {
                    active: true,
                    finished: false
                },
                "7": {
                    active: true,
                    finished: false
                },
                "8": {
                    active: true,
                    finished: false
                },
                "9": {
                    active: true,
                    finished: false
                }
            }
        end

        def begin
            
        end

        def playable(move)
             @state[move].nil? ? true : false
        end
        
        def update_state(player, move)
            
        end
    end
end