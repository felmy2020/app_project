Rails.application.routes.draw do
  # テスト用
  resources :tests
  get "up" => "rails/health#show", as: :rails_health_check

end
