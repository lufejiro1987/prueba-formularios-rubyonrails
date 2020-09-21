Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'foods/player'
  get 'foods/result'
  post 'foods/empanada'

  root to: 'foods#player'
end
