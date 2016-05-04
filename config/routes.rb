Rails.application.routes.draw do

  get '/logins', to: 'logins#index'

	get '/menus', to: 'menus#index'
  get '/menus/:category', to: 'menus#category'
  get '/menus/:category/:id', to: 'menus#detail'

  get '/mypage/:student_number', to: 'users#index'
  get '/tray/:student_number', to: 'users#tray'
  get '/past_order/:student_number', to: 'users#past_order'

  get '/orders/new/:id', to: 'orders#new'
  get '/orders/confirm/:student_number', to: 'orders#confirm'
  get '/orders/destroy/:id', to: 'orders#destroy'
  get '/orders/destroyall/:student_number', to: 'orders#destroyall'

  # resources :menus do
  # 	member do
  # 		get 'detail'
  # 	end

  #   collection do
  #     get 'index'
  #   end 
  # end
end
