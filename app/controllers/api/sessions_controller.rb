class Api::SessionsController < ApplicationController
	
	 def user_create
		  user = User.find_by(email: params[:email])
		  if user && user.authenticate(params[:password])
		    jwt = JWT.encode(
		      {
		       user_id: user.id, # the data to encode
		       exp: 24.hours.from_now.to_i # the expiration time
		       },
		       Rails.application.credentials.fetch(:secret_key_base), # the secret key
		       'HS256' # the encryption algorithm
		    )
		    render json: {jwt: jwt, email: user.email, user_id: user.id}, status: :created
		  else
		    render json: {}, status: :unauthorized
		  end
		end

		def trainer_create
		  trainer = Trainer.find_by(email: params[:email])
		  if trainer && trainer.authenticate(params[:password])
		    jwt = JWT.encode(
		      {
		       trainer_id: trainer.id, # the data to encode
		       exp: 24.hours.from_now.to_i # the expiration time
		       },
		       Rails.application.credentials.fetch(:secret_key_base), # the secret key
		       'HS256' # the encryption algorithm
		    )
		    render json: {jwt: jwt, email: trainer.email, trainer_id: trainer.id}, status: :created
		  else
		    render json: {}, status: :unauthorized
		  end
		end

end
