HydeParkSpiritStore::Application.routes.draw do

  get 'admin' => 'admin/products#index'

  namespace :admin do
    resources :products
    resources :categories
    resources :product_types
    resources :option_values
    resources :options
  end

  scope module: "web" do
    resources :categories, :only => [:show] do
      resources :products, :only => [:show]
    end
    root :to => 'pages#home'
  end
end
