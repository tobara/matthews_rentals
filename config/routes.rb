Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'equipment_categories#index'
  resources :equipment_sales, only: [:index]
  resources :equipment_purchasing, only: [:index]
  resources :equipment_categories do
    resources :equipment_rentals do
    end
  end

end
