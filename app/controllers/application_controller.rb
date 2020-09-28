class ApplicationController < ActionController::Base

    def authenticate_user!
        redirect_to users_sign_in_path unless helpers.logged?
    end
end
