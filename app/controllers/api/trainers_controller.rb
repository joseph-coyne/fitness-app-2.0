class Api::TrainersController < ApplicationController

		def profile
				@trainer = current_trainer
				render 'show.json.jbuilder'
		end
	
		def index
				@trainers = Trainer.all
				if params[:search]
						@tags = Tag.find_by(name: params[:search])
						@trainers = @tags.trainers
				end
		
				@trainers = @trainers.order(id: :asc)
				render 'index.json.jbuilder'
		end

		def show
				@trainer = Trainer.find_by(id: params[:id])
				render 'show.json.jbuilder'
		end

		def create
				@trainer = Trainer.new(
	    		first_name: params[:first_name],
					last_name: params[:last_name],
					username: params[:username],
					email: params[:email],
					password: params[:password],
					password_confirmation: params[:password_confirmation],
					birthdate: params[:birthdate],
					gender: params[:gender],
					bio: params[:bio],
					avatar: params[:avatar],
					location: params[:location],
					video: params[:video],
					nutritionist: params[:nutritionist],
					rating: params[:rating]
					)

	  	if @trainer.save
						tags = params[:tags].split(",")
	  			tags.each do |tag|
	  					TrainerTag.create(trainer_id: @trainer.id, tag_id: tag)
	  			end
						render 'show.json.jbuilder'
	  			render json: {message: 'Trainer created successfully'}, status: :created
	  	else
	    	render json: {errors: @trainer.errors.full_messages}, status: :bad_request
	  	end

		end

		def update
				if current_trainer
						@trainer = current_trainer
						@trainer.first_name = params[:first_name] || @trainer.first_name
						@trainer.last_name = params[:last_name] 	|| @trainer.last_name
						@trainer.username = params[:username] 		|| @trainer.username
						@trainer.email = params[:email] 					|| @trainer.email
						@trainer.password = params[:password] 		|| @trainer.password
						@trainer.password_confirmation = params[:password_confirmation] || @trainer.password_confirmation
						@trainer.birthdate = params[:birthdate] 	|| @trainer.birthdate
						@trainer.gender = params[:gender] 				|| @trainer.gender
						@trainer.bio = params[:bio] 							|| @trainer.bio
						@trainer.location = params[:location] 		|| @trainer.location
						@trainer.video = params[:video] 	|| @trainer.video
						@trainer.rating = params[:rating] 	|| @trainer.rating
						@trainer.nutritionist = params[:nutritionist] 	|| @trainer.nutritionist
						if params[:avatar]
								@trainer.avatar = params[:avatar]
						end

						if @trainer.save
							if params[:tags] != ","
								@trainer.tags.destroy_all
								tags = params[:tags].split(",")
	  						tags.each do |tag|
	  							TrainerTag.create(trainer_id: @trainer.id, tag_id: tag)
	  						end
								render 'show.json.jbuilder'
							end
						else
								render json: {errors: @trainer.errors.full_messages}, status: :unprocessable_entity
						end
				end
		end

		def destroy
				@trainer = Trainer.find_by(id: params[:id])
				@trainer.destroy
				render json: {message: "Account successfully deleted."}
		end

end
