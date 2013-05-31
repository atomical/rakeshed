Rails.application.routes.draw do
  resources :sheds, only: [:index] do
    member do
      get 'rake'
    end
  end

end