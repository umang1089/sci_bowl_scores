class ApplicationController < ActionController::Base
  # protect_from_forgery with: :null_session

  before_action :authenticate_school!

  before_action :configure_permitted_parameters, if: :devise_controller?

   protected

   def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, :keys => [:name, :city, :state, :region_name])

     devise_parameter_sanitizer.permit(:account_update, :keys => [:name, :city, :state])
   end
end
