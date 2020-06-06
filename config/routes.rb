# frozen_string_literal: true

Rails.application.routes.draw do
  scope module: :web do
    root 'players#index'

    resources :players
    resources :games
  end
end
