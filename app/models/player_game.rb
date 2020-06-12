# frozen_string_literal: true

class PlayerGame < ApplicationRecord
  belongs_to :player
  belongs_to :game

  has_many :turns, dependent: :destroy
end
