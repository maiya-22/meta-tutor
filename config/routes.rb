Rails.application.routes.draw do
 
  

  resources :answers
  resources :questions
  get 'question/index'
  get 'question/show'
  get 'question/new'
  get 'question/edit'
  get 'question/create'
  get 'question/update'
  get 'question/destroy'
# get '/', to: 'tutorials#index'

root to: 'tutorials#index'





resources :tutorials
# roller#Action
#                 tutorials GET    /tutorials(.:format)                                                                     tutorials#index
#                           POST   /tutorials(.:format)                                                                     tutorials#create
#              new_tutorial GET    /tutorials/new(.:format)                                                                 tutorials#new
#             edit_tutorial GET    /tutorials/:id/edit(.:format)                                                            tutorials#edit
#                  tutorial GET    /tutorials/:id(.:format)                                                                 tutorials#show
#                           PATCH  /tutorials/:id(.:format)                                                                 tutorials#update
#                           PUT    /tutorials/:id(.:format)                                                                 tutorials#update
#                           DELETE /tutorials/:id(.:format)                                                                 tutorials#destroy
                  


devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# Prefix Verb   URI Pattern
# Controller#Action
#      root GET    /
# home#index
# new_user_session GET    /users/sign_in(.:format)
# devise/sessions#new
# user_session POST   /users/sign_in(.:format)
# devise/sessions#create
# destroy_user_session DELETE /users/sign_out(.:format)
# devise/sessions#destroy
# new_user_password GET    /users/password/new(.:format)
# devise/passwords#new
# edit_user_password GET    /users/password/edit(.:format)
# devise/passwords#edit
# user_password PATCH  /users/password(.:format)
# devise/passwords#update
#           PUT    /users/password(.:format)
# devise/passwords#update
#           POST   /users/password(.:format)
# devise/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)                devise/registrations#cancel
# new_user_registration GET    /users/sign_up(.:format)                devise/registrations#new
# edit_user_registration GET    /users/edit(.:format)                devise/registrations#edit
# user_registration PATCH  /users(.:format)                devise/registrations#update
#           PUT    /users(.:format)                devise/registrations#update
#           DELETE /users(.:format)                devise/registrations#destroy
#           POST   /users(.:format)                devise/registrations#create
# rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
# rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                active_storage/disk#update
# rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                active_storage/direct_uploads#create
