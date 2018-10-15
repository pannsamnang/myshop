Rails.application.routes.draw do
  resources :suppliers
  resources :variant_types do
    resources :variant_values
  end
  resources :categories
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
