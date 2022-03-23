Rails.application.routes.draw do

  get '/',   to: 'static_pages#home_page'
 root to: 'static_pages#home_page'
end
