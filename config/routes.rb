Rails.application.routes.draw do
  
  root "main#index"

  get 'sign_up' , to: "registration#new"
  post 'sign_up', to: "registration#create"
  

  delete 'logout', to: "session#destroy"

  get 'sign_in', to: "signin#new"
  post 'sign_in', to: "signin#create"

end
