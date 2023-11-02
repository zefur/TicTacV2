module UltimateTicTac
    class Original
        def initialize
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
        

        def next_area(game ,cell)
            @games[game.to_s][active].toggle!
            @games[game.to_s][active].toggle!
        end

    end
end