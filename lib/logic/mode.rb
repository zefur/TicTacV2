module UltimateTicTac
    class Mode
        def initialize(attr= { })
            @mode = attr[:mode]
        end


        def open_area
            case @mode
            when "normal"
                original_mode_movement
            when "random"
                random_mode_movement 
            when "free"
                free_mode_movement
            else
                raise
            end
        end
        def original_mode_movement
            # recieve the move data
            
        end
    end
end