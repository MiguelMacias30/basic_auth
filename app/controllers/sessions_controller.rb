class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.find_by(
                            email: params[:user][:email],
                            password: params[:user][:password]
                        )

        if @user.present?
            session[:user_id] = @user.id
            redirect_to root_path, notice: 'has iniciado sesion'
        else
            redirect_to users_sign_in_path, notice: 'email o pass no valido'
        end
    end

    def destroy
        reset_session
        redirect_to root_path, notice: 'sesion cerrada'
    end
end