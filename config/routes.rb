Rails.application.routes.draw do
  get 'solver' => 'solver#index'
  root 'solver#index'
end
