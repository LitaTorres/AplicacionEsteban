class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    def after_sign_in_path_for(resource)
        publications_path
    end

    def authorize_request(kind = nil) #si kind = nill 
        unless kind.include?(current_user.role) # pero si kind es dif de nill pero es role entonces redirecciona.
            redirect_to publications_path, notice: "No tienes permiso para esta acción"
        end
    end

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :photo, :description ])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :photo, :description])
    end
    
end
