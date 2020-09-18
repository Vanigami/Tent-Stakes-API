Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do 
      resources :users do 
        resources :checklists do
        resources :items
        end
      end
    end
  end
end
