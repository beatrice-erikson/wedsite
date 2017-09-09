class SessionsController < ApplicationController
    def new
        @admin = Admin.new
    end
    def create
        @admin = Admin.new
            .tap {|a| a.username = admin_params[:username]}
            .tap {|a| a.password = admin_params[:password]}
        if @admin.login_valid?
            session[:current] = true
            redirect_to root_path
        else
            @admin.password = nil
            flash[:notice] = "Incorrect username or password"
            render "new"
        end
    end
    def destroy
        reset_session
        redirect_to root_path
    end
    private
        def admin_params
            params.require(:admin)
        end
end