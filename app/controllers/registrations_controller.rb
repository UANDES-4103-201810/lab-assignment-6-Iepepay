class RegistrationsController < ApplicationController
	def new

	end

	def create
	
        params.require(:registrations).permit(:name, :last_name, :email, :password, :phone)

        if @registrations.save
          flash[:success] = 'Welcome, #{@user.name}!'
          redirect_to 'log_in'
         else
          notice : 'Registration Failed, Try again'
          reditect_to 'registrations'
         end

	end
end
