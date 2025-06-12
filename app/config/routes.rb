Rails.application.routes.draw do
  root to: proc { [200, {}, ['Hello World!']] }
  get '/metrics', to: 'metrics#index'
end
