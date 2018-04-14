class PersonasreservasController < ApplicationController
  before_action :set_personasreserva, only: [:show, :update, :destroy]

  # GET /personasreservas
  def index
    @personasreservas = Personasreserva.all

    render json: @personasreservas
  end

  # GET /personasreservas/1
  def show
    render json: @personasreserva
  end

  # POST /personasreservas
  def create
    @personasreserva = Personasreserva.new(personasreserva_params)

    if @personasreserva.save
      render json: @personasreserva, status: :created, location: @personasreserva
    else
      render json: @personasreserva.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /personasreservas/1
  def update
    if @personasreserva.update(personasreserva_params)
      render json: @personasreserva
    else
      render json: @personasreserva.errors, status: :unprocessable_entity
    end
  end

  # DELETE /personasreservas/1
  def destroy
    @personasreserva.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personasreserva
      @personasreserva = Personasreserva.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def personasreserva_params
      params.require(:personasreserva).permit(:reserva_id, :email, :telefono, :celular, :nombre1, :nombre2, :apellido1, :apellido2)
    end
end
