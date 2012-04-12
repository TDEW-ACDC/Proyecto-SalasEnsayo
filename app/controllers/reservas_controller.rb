class ReservasController < ApplicationController
  # GET /reservas/book
  # GET /reservas/book.json
  def book
    current_user = User.find(session[:user_id])

    @reserva = Reserva.new
    @reserva.sala_id = params[:sala_id]
    @reserva.user_id = current_user.id

    respond_to do |format|
      if @reserva.save
        format.html { redirect_to "/salas/" + params[:sala_id].to_s, method: 'show', notice: 'Reserva was successfully created.' }
        format.json { render json: @reserva, status: :created, location: @reserva }
      else
        format.html { redirect_to "/salas/" + params[:sala_id].to_s, method: 'show' }
        format.json { render json: @reserva.errors, status: :unprocessable_entity }
      end
    end
  end
end