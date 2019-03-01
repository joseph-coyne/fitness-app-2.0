class Api::AppointmentsController < ApplicationController

  def index
    if current_user
      @appointments = current_user.appointments.order('time')
      render 'index.json.jbuilder'
    elsif current_trainer
      @appointments = current_trainer.appointments.order('time DESC')
      render 'index.json.jbuilder'
    else
      render json: []
    end
  end

  def show
    @appointment = Appointment.find_by(id: params[:id])
    render 'show.json.jbuilder' 
  end

  def create
    if current_user
      @appointment = Appointment.new(
        time: params[:time],
        focus: params[:focus],
        trainer_id: params[:trainer_id],
        user_id: current_user.id
        )
      if @appointment.save
        render json: {message: "Appointment created successfully"}, status: :created
      else
        render json: {errors: @appointment.errors.full_messages}, status: :bad_request
      end
    end

  end

  def update
    if current_user
      @appointment = Appointment.find_by(id:params[:id])

      @appointment.time = params[:time] || @appointment.time
      @appointment.focus = params[:focus] || @appointment.focus
      if @appointment.save
        render 'show.json.jbuilder'
      else
        render json: {errors: @appointment.errors.full_messages}, status: :unprocessable_entity
      end
    elsif current_trainer
      @appointment = Appointment.find_by(id:params[:id])

      @appointment.rating = params[:rating] || @appointment.rating
      @appointment.info = params[:info] || @appointment.info
      if @appointment.save
        @appointment.items.destroy_all
        items = params[:items]
        items.each do |item|
          Item.create(name: item)
          item = Item.last
          AppointmentItem.create(appointment_id: @appointment.id, item_id: item.id)
        end
        render 'show.json.jbuilder'
      else
        render json: {errors: @appointment.errors.full_messages}, status: :unprocessable_entity
      end
    end 
  end

  def destroy
    @appointment = Appointment.find_by(id: params[:id])
    @appointment.destroy
    render json: {message: "Appointment cancelled."}
  end
end
