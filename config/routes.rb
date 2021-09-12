# Rails.application.routes.draw do
#   root 'home#index'

#   resources :nodes
# end

Rails.application.routes.draw do
  root 'taxonomies#index'

  resources :taxonomies do
    resources :nodes
  end

  resources :nodes do
    resources :nodes
  end
end