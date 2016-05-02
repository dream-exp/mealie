Rails.application.routes.draw do

	get '/menus', to: 'menus#index'
  get '/menus/:category', to: 'menus#category'
  get '/menus/:category/:id', to: 'menus#detail'

  get '/mypage/:student_number', to: 'users#index'

  get '/orders/new/:id', to: 'orders#new'
  get '/orders/destroy/:id', to: 'orders#destroy'

  resources :logins do
    get 'index'
  end

  # resources :menus do
  # 	member do
  # 		get 'detail'
  # 	end

  #   collection do
  #     get 'index'
  #   end 
  # end
end
