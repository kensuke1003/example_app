Rails.application.routes.draw do
  #HTTPメソッドが入る get post delete
  get 'todolists/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'
  post 'todolists' =>'todolists#create'
  get 'todolists' => 'todolists#index'
  #以下は名前付きルート
  get 'todolists/:id' => 'todolists#show', as:'todolist'
end
