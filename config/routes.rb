Rails.application.routes.draw do
  devise_for :users

  namespace :api, format: :json do
    namespace :v1 do
      devise_scope :user do
        post "sessions/create"
      end
    end
  end
end
