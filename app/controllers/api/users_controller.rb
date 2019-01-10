class Api::UsersController < ApplicationController
	before_action :authenticate_user, except: [:create, :show]
	def profile
		@user = current_user
		render 'show.json.jbuilder'
	end
	
	def show
		@user = User.find_by(id: params[:id])
		render 'show.json.jbuilder'
	end

	def create
		@user = User.new(
			first_name: params[:first_name],
			last_name: params[:last_name],
			username: params[:username],
			email: params[:email],
			password: params[:password],
			password_confirmation: params[:password_confirmation],
			birthdate: params[:birthdate],
			gender: params[:gender],
			weight: params[:weight],
			height: params[:height],
			avatar: params[:avatar],
			bio: params[:bio],
			level: params[:level]
		)
		if @user.save
			render json: {message: 'User created successfully'}, status: :created
		else
			render json: {errors: @user.errors.full_messages}, status: :bad_request
		end
	end


	def update
	
		@user = current_user

		@user.first_name = params[:first_name] || @user.first_name
		@user.last_name = params[:last_name] || @user.last_name
		@user.username = params[:username] || @user.username
		@user.email = params[:email] || @user.email
		@user.password = params[:password] || @user.password_digest
		@user.password_confirmation = params[:password_confirmation] || @user.password_digest
		@user.birthdate = params[:birthdate] || @user.birthdate
		@user.gender = params[:gender] || @user.gender
		@user.weight = params[:weight] || @user.weight
		@user.height = params[:height] || @user.height
		@user.bio = params[:bio] || @user.bio
		@user.level = params[:level] || @user.level
		if params[:avatar]
			@user.avatar = params[:avatar]
		end

		if @user.save
			render 'show.json.jbuilder'
		else
			render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity
		end

	end

	def destroy
		@user = User.find_by(id: params[:id])
		@user.destroy
		render json: {message: "Account successfully deleted."}
	end

end