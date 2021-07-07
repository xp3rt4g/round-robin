Rails.application.routes.draw do
  root 'tekme#index'
  post "tekme" => "tekme#tekme"
end
