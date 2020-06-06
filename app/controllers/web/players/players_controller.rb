# frozen_string_literal: true

module Web
  class PlayersController < Web::ApplicationController
    def index
      @players = Player.all
      render :index
    end
  end
end
