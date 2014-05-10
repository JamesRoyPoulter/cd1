Countdowntoit::Application.routes.draw do
  resources :countdowns

  root :to => 'countdowns#index'

end
