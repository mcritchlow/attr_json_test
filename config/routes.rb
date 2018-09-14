Rails.application.routes.draw do
  resources :works

  resources :agents
  resources :creators, controller: 'agents', type: 'Creator'
  resources :contributors, controller: 'agents', type: 'Contributor'

  root 'works#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
