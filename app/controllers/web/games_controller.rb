# frozen_string_literal: true

module Web
  class GamesController < Web::ApplicationController
    def new
      @game = Game.new
      @game.player_games.build
    end

    def create
      game_params = params[:game]
      players = Player.where(id: game_params[:player_ids])
      @game = Game.create(players_count: game_params[:players_count], players: players)
      if @game.save
        redirect_to @game
      else
        redirect_back(fallback_location: new_game_path)
      end
    end

    def show
      @game = Game.find(params[:id])
    end
  end
end
