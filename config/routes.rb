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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root 'welcome#index'
end
