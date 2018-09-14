Rails.application.routes.draw do
  resources :agents
  resources :creators, controller: 'agents', type: 'Creator'
  resources :contributors, controller: 'agents', type: 'Contributor'
  # TODO: make a more useful root eventually
  root 'agents#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
