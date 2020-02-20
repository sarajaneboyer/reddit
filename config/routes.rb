Rails.application.routes.draw do
  root 'subs#index'
  resources :subs do#adds resources for all of our routes
    resources :topics
    end


  # if we don't want to use resouces we can say specifically what we want
  #   get "/subs", to: "subs#index"
  #   get "/sub/:id", to "sub#show"
  #   delete "/sub/:id", to: "sub#destroy"



   end
