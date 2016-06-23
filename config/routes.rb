Rails.application.routes.draw do
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
