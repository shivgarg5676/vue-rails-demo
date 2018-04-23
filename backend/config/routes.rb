Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  mount Ckeditor::Engine => '/ckeditor'
  
  resources :course_pages, param: :slug do
    resources :faqs, shallow: true
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
