Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'bookings#index'
  resources :bookings do
    collection do
      get 'status'
    end
  end

  resources :rooms
end
