class OrganizadorsController < ApplicationController
  before_action :set_organizador, only: [:show, :update, :destroy]

  # GET /organizadors
  def index
    @organizadors = Organizador.all

    render json: @organizadors
  end

  # GET /organizadors/1
  def show
    render json: @organizador
  end

  # POST /organizadors
  def create
    @organizador = Organizador.new(organizador_params)

    if @organizador.save
      render json: @organizador, status: :created, location: @organizador
    else
      render json: @organizador.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /organizadors/1
  def update
    if @organizador.update(organizador_params)
      render json: @organizador
    else
      render json: @organizador.errors, status: :unprocessable_entity
    end
  end

  # DELETE /organizadors/1
  def destroy
    @organizador.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organizador
      @organizador = Organizador.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def organizador_params
      params.require(:organizador).permit(:nombre1, :nombre2, :apellido1, :apellido2, :empresa_id, :evento_id, :email, :telefono, :descripcion, :estadoinicialeventos)
    end
end
