class UsersController < ApplicationController
	before_action :set_user, only: [:show]
	
	def show
	end

	private
    
	    def set_user
	      @user = User.find(params[:id])
	    end

	    def user_params
	      accessible = [ :name, :email ] # extend with your own params
	      accessible << [ :password, :password_confirmation ] unless params[:user][:password].blank?
	      params.require(:user).permit(accessible).except(:search)
	    end
end
