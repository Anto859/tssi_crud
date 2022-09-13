Rails.application.routes.draw do
   get 'cars' => 'cars#index'
   get 'cars/input' => 'cars#input'
   post 'cars/create' => 'cars#create'
   get 'cars/edit/:id' => 'cars#edit'
   post 'cars/update/:id' => 'cars#update'
   get 'cars/detail/:id' => 'cars#detail'
   get 'cars/delete/:id' => 'cars#delete'
   
    
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
