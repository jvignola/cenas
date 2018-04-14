class EventoinstanciaController < ApplicationController
  before_action :set_eventoinstancium, only: [:show, :update, :destroy]

  # GET /eventoinstancia
  def index
    @eventoinstancia = Eventoinstancium.all

    render json: @eventoinstancia
  end

  # GET /eventoinstancia/1
  def show
    render json: @eventoinstancium
  end

  # POST /eventoinstancia
  def create
    @eventoinstancium = Eventoinstancium.new(eventoinstancium_params)

    if @eventoinstancium.save
      render json: @eventoinstancium, status: :created, location: @eventoinstancium
    else
      render json: @eventoinstancium.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /eventoinstancia/1
  def update
    if @eventoinstancium.update(eventoinstancium_params)
      render json: @eventoinstancium
    else
      render json: @eventoinstancium.errors, status: :unprocessable_entity
    end
  end

  # DELETE /eventoinstancia/1
  def destroy
    @eventoinstancium.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eventoinstancium
      @eventoinstancium = Eventoinstancium.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def eventoinstancium_params
      params.require(:eventoinstancium).permit(:evento_id, :fecha, :hora, :ciudad, :zona, :precioinstancia, :cocinero_id, :cupominimo, :cupomaximo, :estadoinstancia, :estadorazon)
    end
end
