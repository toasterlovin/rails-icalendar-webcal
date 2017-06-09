Rails.application.routes.draw do
  resource :calendar, only: :show
end
