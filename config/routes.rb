Rails.application.routes.draw do
  devise_for :users

  scope module: 'api' do
    scope '1', module: 'v1' do
      resources :users
    end
  end
end
