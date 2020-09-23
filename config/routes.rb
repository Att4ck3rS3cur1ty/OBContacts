Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    namespace :v1 do
      resources :contacts
    end
  end
  
  # this would generate something like: api.obcontacts.com/v1/contacts
=begin   constraints subdomain: 'api' do
    scope module: 'api' do
      namespace :v1 do
        resources :contacts
      end
    end
  end =end

end
