Rails.application.routes.draw do
  resources :offices
  devise_for :agents, controllers: {
    sessions:      'agents/sessions',
    passwords:     'agents/passwords',
    registrations: 'agents/registrations'
  }
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
  resources :favorites, only: [:create , :destroy]
  resources :contacts, only: [:new, :create]
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
end
