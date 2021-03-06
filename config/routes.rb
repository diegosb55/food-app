Rails.application.routes.draw do
  resources :categories
  resources :recipes

get '/:recipe_id/ingredient/new' => 'recipes#newingredient', as: 'new_ingredient'
post '/ingredients/' => 'recipes#create_ingredient'

get '/:recipe_id/instruction/new' => 'recipes#newinstruction', as: 'new_instruction'
post '/instructions/' => 'recipes#create_instruction'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
