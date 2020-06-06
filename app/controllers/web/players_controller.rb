# frozen_string_literal: true

module Web
  class PlayersController < Web::ApplicationController
    def index
      @players = Player.all
      render :index
    end

    def new
      @player = Player.new
    end

    def create
      player_params = params[:player]
      @player = Player.create(name: player_params[:name])
      if @player.save
        redirect_to :root
      else
        redirect_to :back
      end
    end
  end
end
