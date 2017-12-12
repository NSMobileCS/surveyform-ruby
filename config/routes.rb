Rails.application.routes.draw do

  get '' => 'servform#redir_to_root'

  get 'servform/reset' => 'servform#reset_count'

  get 'servform/home'

  post 'servform/result' => 'servform#result'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
