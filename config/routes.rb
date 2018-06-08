Rails.application.routes.draw do



root to: 'tutorials#index'

# tutorials routes:
get "/tutorials", to: "tutorials#index"
post "/tutorials", to: "tutorials#create"
get 'tutorials/search', to: 'tutorials#search'
get 'tutorials/new', to: "tutorials#new"
get 'tutorials/:tutorial_id', to: 'tutorials#show'
patch 'tutorials/:tutorial_id', to: 'tutorials#update'




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




#  "/tutorials/1/questions/tutorial/1/question/comments/7"



#  root to: 'home#index'
 
  # [PATCH] "/questions/1"

 

  


  
 
  # 


  # resources :tags
  # resources :comments
  # resources :answers
  # resources :questions
  # get 'question/index'
  # get 'question/show'
  # get 'question/new'
  # get 'question/edit'
  # get 'question/create'
  # get 'question/update'
  # get 'question/destroy'
# get '/', to: 'tutorials#index'

devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# maiya:journal maiya$ rails routes
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#                      root GET    /                                                                                        tutorials#index
#          tutorials_search GET    /tutorials/search(.:format)                                                              tutorials#search
#                           GET    /tutorials/:tutorial_id/questions/:question_id(.:format)                                 questions#show
#          new_user_session GET    /users/sign_in(.:format)                                                                 devise/sessions#new
#              user_session POST   /users/sign_in(.:format)                                                                 devise/sessions#create
#      destroy_user_session DELETE /users/sign_out(.:format)                                                                devise/sessions#destroy
#         new_user_password GET    /users/password/new(.:format)                                                            devise/passwords#new
#        edit_user_password GET    /users/password/edit(.:format)                                                           devise/passwords#edit
#             user_password PATCH  /users/password(.:format)                                                                devise/passwords#update
#                           PUT    /users/password(.:format)                                                                devise/passwords#update
#                           POST   /users/password(.:format)                                                                devise/passwords#create
#  cancel_user_registration GET    /users/cancel(.:format)                                                                  devise/registrations#cancel
#     new_user_registration GET    /users/sign_up(.:format)                                                                 devise/registrations#new
#    edit_user_registration GET    /users/edit(.:format)                                                                    devise/registrations#edit
#         user_registration PATCH  /users(.:format)                                                                         devise/registrations#update
#                           PUT    /users(.:format)                                                                         devise/registrations#update
#                           DELETE /users(.:format)                                                                         devise/registrations#destroy
#                           POST   /users(.:format)                                                                         devise/registrations#create
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create