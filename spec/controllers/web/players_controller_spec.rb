# frozen_string_literal: true

RSpec.describe Web::PlayersController, type: :controller do
  describe 'index' do
    subject(:get_index) { get :index }

    before { create(:player) }

    it 'renders index page' do
      expect(get_index).to render_template(:index)
      expect(response.status).to eq(200)
    end
  end

  describe 'post create' do
    subject(:create_player) { post :create, params: { player: { name: name } } }

    let(:name) { generate(:name) }

    it 'creates a player' do
      expect { create_player }.to change(Player, :count).by(1)
    end
  end
end
