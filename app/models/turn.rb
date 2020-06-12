# frozen_string_literal: true

class Turn < ApplicationRecord
  belongs_to :player
  belongs_to :player_game
end
