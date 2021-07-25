Rails.application.routes.draw do
  root to: 'links#new'
  resources :links, only: [:show, :new, :create]

  get '/:shortcut', to: 'links#redirect'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
