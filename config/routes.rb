Rails.application.routes.draw do
  resources :scores
  resources :users
  resources :clue_joiners
  resources :cells
  resources :clues
  resources :puzzles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
