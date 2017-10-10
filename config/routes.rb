Rails.application.routes.draw do
  get 'photos/index'

  get 'photos/show'

  get 'info/location'

  get 'info/ceremony'

  get 'info/our_relationship'

  get 'info/registry'

  get 'info/faq'

  get 'rsvps/admin', to: 'rsvps#admin_index'
  get 'rsvps/:id/email', to: 'rsvps#email', as: 'email'
  resources :rsvps, only: [:update, :create, :destroy]
  resources :sessions, only: [:create, :new, :destroy]
  resources :rsvps, only: [:show], param: :name, as: 'rsvp_link'
  resources :dietary_needs, only: :destroy
  resources :access_needs, only: :destroy
  resources :rsvp_skills, only: :destroy
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'flappy_bird', to: 'welcome#flappy_bird'

  root 'welcome#index'
end
