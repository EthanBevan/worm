class TeachersController < ApplicationController

	def new
	end

	def create 
		teacher = Teacher.new
		teacher.email = params[:email]
		teacher.username = params[:username]
		teacher.password = params[:password]
		teacher.save
		session[:teacher_id] = teacher.id
		redirect_to '/'
	end

	def show
		
	end

end
