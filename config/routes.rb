Rails.application.routes.draw do
  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to
  # Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the
  # :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being
  # the default of "spree".
  mount Spree::Core::Engine, at: '/'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :spree do
    namespace :api, defaults: { format: 'json' } do
      namespace :v1 do
        # Our new route goes here!
        resources :sales, only: [:index]

        resources :companies, except: [:destroy]

        resources :users, only: [:index]
      end
    end
  end

  # root 'spree/api/v1/authentication#authenticate'

end
