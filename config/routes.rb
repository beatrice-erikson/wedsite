Rails.application.routes.draw do
  get 'info/location'

  get 'info/ceremony'

  get 'info/our_relationship'

  get 'info/registry'

  get 'info/faq'

  get 'welcome/index'
  
  root 'welcome#index'

  resources :rsvp, only: [:index, :show], param: :name
  resources :rsvp, only: :update
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
