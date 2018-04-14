class ComisioneventosController < ApplicationController
  before_action :set_comisionevento, only: [:show, :update, :destroy]

  # GET /comisioneventos
  def index
    @comisioneventos = Comisionevento.all

    render json: @comisioneventos
  end

  # GET /comisioneventos/1
  def show
    render json: @comisionevento
  end

  # POST /comisioneventos
  def create
    @comisionevento = Comisionevento.new(comisionevento_params)

    if @comisionevento.save
      render json: @comisionevento, status: :created, location: @comisionevento
    else
      render json: @comisionevento.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comisioneventos/1
  def update
    if @comisionevento.update(comisionevento_params)
      render json: @comisionevento
    else
      render json: @comisionevento.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comisioneventos/1
  def destroy
    @comisionevento.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comisionevento
      @comisionevento = Comisionevento.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comisionevento_params
      params.require(:comisionevento).permit(:evento_id, :vigencia, :tipo, :valor)
    end
end
