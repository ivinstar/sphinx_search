Rails.application.routes.draw do

  namespace :api do
  end

  scope :module => :web do
    root to: 'search#index'

    resources :search
  end

end
