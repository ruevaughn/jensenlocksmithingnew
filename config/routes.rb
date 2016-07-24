Rails.application.routes.draw do

  devise_for :admins
  root 'pages#home'

  get "automotive", to: "pages#automotive", as: "automotive"
  get "automotive_hurricane", to: "pages#automotive_hurricane", as: "automotive_hurricane"
  get "automotive_springdale", to: "pages#automotive_springdale", as: "automotive_springdale"
  get "automotive_st_george", to: "pages#automotive_st_george", as: "automotive_st_george"
  get "automotive_kanab", to: "pages#automotive_kanab", as: "automotive_kanab"

  get "blog", to: "pages#blog", as: "blog"
  get "commercial", to: "pages#commercial", as: "commercial"
  get "contact", to: "pages#contact", as: "contact"
  get "home", to: "pages#home", as: "home"
  get "residential", to: "pages#residential", as: "residential"
  get "reviews", to: "pages#reviews", as: "reviews"

  put "contact_form", to: "pages#contact_form"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
