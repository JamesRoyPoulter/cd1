Countdowntoit::Application.routes.draw do
  resources :countdowns

  match 'techpeaksdemoday' => 'countdowns#show', :defaults => {:id => 1}

  root :to => 'countdowns#show', :defaults => {:id => 1}

end
