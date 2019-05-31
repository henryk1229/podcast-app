module UsersHelper


    def user_params(*args)
      params.require(:user).permit(:username, :first_name, :last_name, :email, :password, :bio, :img_url)
    end

    def logged_in_user
      unless logged_in?
        flash.now[:message] = "Please log in."
        redirect_to login_url
      end
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to :root unless current_user?(@user)
    end

end
