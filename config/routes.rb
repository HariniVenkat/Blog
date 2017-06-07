Rails.application.routes.draw do
  

  get 'dashboard/homepage'

#specify the resource....so all the routes are specified inbuilt...
#resources :articles    #specify plural not singular........


#going to add nested routes.....resources

resources :articles do
  resources :comments
end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
