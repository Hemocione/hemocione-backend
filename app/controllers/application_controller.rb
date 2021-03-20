class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
    
      puts "configurando rubocop e testando codeclimate PR comments!"
      added_attrs = %i[email password password_confirmation blood_type gender
                       phone birthdate]
      devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
      devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    end
end
