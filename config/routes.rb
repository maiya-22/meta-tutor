Rails.application.routes.draw do



root to: 'tutorials#index'

# tutorials routes:
get "/tutorials", to: "tutorials#index"
post "/tutorials", to: "tutorials#create"
get '/tutorials/search', to: 'tutorials#search'
get '/tutorials/new', to: "tutorials#new"
get '/tutorial/:tutorial_id', to: 'tutorials#show'
patch '/tutorial/:tutorial_id', to: 'tutorials#update'




# questions routes:
get '/tutorials/:tutorial_id/questions/:question_id', to: 'questions#show'
get "/tutorial/:tutorial_id/question/new", to: "questions#new"
post "/tutorial/:tutorial_id/question", to: 'questions#create'
delete  "/questions/:question_id", to: 'questions#destroy'
patch  "/questions/:question_id", to: 'questions#update'

# comments routes:
# comments are read via the question threads, so no route for index:
post "/comment", to: 'comments#create'
delete "/comments/:comment_id", to: "comments#destroy"
patch "/comments/:comment_id", to: "comments#update"

# answers routes:
# answers are read via the question threads, so no route for index:
post "/answers", to: 'answers#create'
delete "/answers/:answer_id", to: 'answers#destroy'
patch "/answer/:answer_id", to: 'answers#update'

devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

