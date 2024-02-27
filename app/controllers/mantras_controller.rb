class MantrasController < ApplicationController
  before_action :set_mantra, only: [:show, :update, :destroy]

  def index
    @mantras = Mantra.all
    render json: @mantras
  end

  def show
    render json: @mantra
  end

  def create
    @mantra = Mantra.new(mantra_params)

    if @mantra.save
      render json: { message: 'Mantra was successfully created.', mantra: @mantra }, status: :created, location: @mantra
    else
      render json: @mantra.errors, status: :unprocessable_entity
    end
  end

  def update
    if @mantra.update(mantra_params)
      render json: { message: 'Mantra was successfully updated.', mantra: @mantra }
    else
      render json: @mantra.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @mantra.destroy
    render json: { message: 'Mantra was successfully destroyed.' }
  end

  private
  def set_mantra
    @mantra = Mantra.find(params[:id])
  end

  def mantra_params
    params.permit(:title, mantra: [])
  end
end
