Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  get 'result1' => 'home#result1'
end
