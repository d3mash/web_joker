# frozen_string_literal: true

class Game < ApplicationRecord
  VALID_COUNTS = [3, 4].freeze

  has_many :player_games, dependent: :destroy
  has_many :players, through: :player_games
  accepts_nested_attributes_for :player_games

  validates :players_count, presence: true, inclusion: { in: VALID_COUNTS }
end
