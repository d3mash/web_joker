# frozen_string_literal: true

class Game < ApplicationRecord
  has_many :players, through: :player_game
end
