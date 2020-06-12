# frozen_string_literal: true

class Player < ApplicationRecord
  validates :name, presence: true
  has_many :games, through: :player_game
end
