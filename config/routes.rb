Rails.application.routes.draw do
  root "main#index"
  get 'main/property_list'
  get 'main/property_details'
  get 'main/post_new_property'
  get 'main/update_property'


# TODO
  #   resources :main do 
  #   as_routes
  #   collection do
  #     match 'add_uniq_id_number', via: [:get, :post]
  #     get 'validate_uniq_id_number'
  #     get 'validate_and_apply_smart_miles'
  #     get 'resend_smart_miles_otp'
  #   end
  # end

  get 'articles/index'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
