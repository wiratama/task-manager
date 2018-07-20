namespace :admin do
	get '/', to: 'dashboard#index'
	get 'dashboard', to: 'dashboard#index'
end