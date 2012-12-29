Laypaper::Application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  resources :comics, path: '/' do
    get 'panels/:page', :action => :show, :controller => :panels
  end
  
end
