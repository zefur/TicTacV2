class PlayersController < ApplicationController
before_action :set_player
    def show
        @player = Player.find(params[:id])
    end
    def edit

    end
    private
    def set_player
        @player = current_player
    end
end
