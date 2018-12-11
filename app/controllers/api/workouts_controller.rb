class Api::WorkoutsController < ApplicationController
   def index
    @users = User.all
    @users = @users.sort_by{|user| [user.calculated_progress]}.reverse
    render "index.json.jbuilder"

   end


  def create
    user = User.new(name: params[:name], email: params[:email], bio: params[:bio], gender: params[:gender], avatar: params[:avatar], level: params[:level], 
      category: params[:category],
      video: params[:video]
      )
    
    if user.save 
      render json: {message: "User created successfully"}, status: :created
     else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
   end

   def profile
      @user = current_user
      render "show.json.jbuilder"
    end

   

  def show
    @user = User.find_by(id:params[:id])
    render "show.json.jbuilder"

  end

  def update
    @user = current_user
    @user.name = params[:name]
    @user.email = params[:email]
    @user.bio = params[:bio]
    @user.gender = params[:gender]
    @user.avatar = params[:avatar]
    @user.level = params[:level]
    @user.category = params[:category]
    @user.video = params[:video]
  if @user.save 
    render json: {message: "User created successfully"}, status: :created
     else
      render json: {errors: @user.errors.full_messages}, status: :bad_request
    end
   end

   def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json: {message: "user successfully destroyed"}
   end

end
