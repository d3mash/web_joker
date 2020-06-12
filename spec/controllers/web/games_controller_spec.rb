# frozen_string_literal: true

RSpec.describe Web::GamesController do
  subject(:create_game) { post :create, params: params }

  let!(:player_one) { create(:player) }
  let!(:player_two) { create(:player) }
  let!(:player_three) { create(:player) }

  let(:params) do
    {
      game: {
        players_count: players_count,
        player_ids: [player_one.id, player_two.id, player_three.id]
      }
    }
  end

  context 'when all parameters are valid' do
    let(:players_count) { Game::VALID_COUNTS.sample }

    it 'is successful' do
      expect { create_game }.to change(Game, :count).by(1).
        and change(PlayerGame, :count).by(3)
    end
  end

  context 'when player count is invalid' do
    let(:players_count) { 999 }

    it 'returns an error' do
      create_game

      expect(response).not_to be_successful
    end
  end
end
