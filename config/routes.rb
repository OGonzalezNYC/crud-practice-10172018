Rails.application.routes.draw do
  # TODO: Ask why having line 3 at top before resources lines matter.
  #get '/players', to: 'players#index', as: 'lets_see_all_the_players'
  resources :players#, only: [:show, :new, :create, :edit, :update, :destroy]

  resources :teams, except: :destroy
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#  get '/players', to: 'players#index'#, #as: 'lets_see_all_the_players'
end
