Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :cidades
resources :estados

get "busca_temp/atual" 
get "busca_temp/cicoDias"
get "busca_temp/horas"

root 'welcome#index'
end
