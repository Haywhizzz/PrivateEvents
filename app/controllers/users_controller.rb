class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def show
         @user = User.find(params[:id])
    end
    
    def create
        @user = User.new(params_user)
        if @user.save
            flash[:notice] = "You're successfully signed in!"
            session[:user_id] = @user.id
            redirect_to events_path
        else
            flash[:alert] = "Oops, there's an error signing in!"
            render 'new'
    end
end
def destroy
    @user.destroy
end

    private
    def params_user
        params.require(:user).permit(:username)
    end
end
