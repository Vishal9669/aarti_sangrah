class VratKathayesController < ApplicationController
  before_action :set_vrat_kathaye, only: [:show, :update, :destroy]

  def index
    @vrat_kathayes = VratKathaye.all
    render json: @vrat_kathayes
  end

  def show
    render json: @vrat_kathaye
  end

  def create
    @vrat_kathaye = VratKathaye.new(vrat_kathaye_params)

    if @vrat_kathaye.save
      render json: { message: 'VratKathaye was successfully created.', vrat_kathaye: @@vrat_kathaye }, status: :created, location: @vrat_kathaye
    else
      render json: @vrat_kathaye.errors, status: :unprocessable_entity
    end
  end

  def update
    if @vrat_kathaye.update(vrat_kathaye_params)
      render json: { message: 'VratKathaye was successfully updated.', vrat_kathaye: @vrat_kathaye }
    else
      render json: @vrat_kathaye.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @vrat_kathaye.destroy
    render json: { message: 'VratKathaye was successfully destroyed.' }
  end

  private
  def set_vrat_kathaye
    @vrat_kathaye = VratKathaye.find(params[:id])
  end

  def vrat_kathaye_params
    params.require(:vrat_kathaye).permit(:title, story: [])
  end
end
