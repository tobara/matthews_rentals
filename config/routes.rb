Rails.application.routes.draw do

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'homes#index'
  scope :homes, :controller => 'homes', :path => 'home' do
    get 'about', :path => '/About-Us'
    get 'contact_us', :path => '/Contact-Us'
    get 'login', :path => '/Login'
  end
  resources :subscribers, only: [:create]
  resources :equipment_sales, only: [:index]
  resources :equipment_purchases, only: [:index]
  resources :equipment_categories do
    resources :equipment_rentals do
    end
  end

end
