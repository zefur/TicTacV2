class GameroomsController < ApplicationController
    # before_action :set_player
    def index
        @gamerooms = Gameroom.all
    end

    def show
        @gameroom = Gameroom.find(params[:id])
        @player
    end

    def new
        @gameroom = Gameroom.new
        @player
    end

    def create
        @gameroom = Gameroom.new(gameroom_params)
       
        if @gameroom.save
            @board = Board.create(gameroom_id: @gameroom.id)
            redirect_to gameroom_path(@gameroom)
        end
    end

    private 
    def set_player
        @player = current_player
    end

    def gameroom_params
        params.require(:gameroom).permit(:player_id, :room_name)
    end
end
