class ChalisasController < ApplicationController
  before_action :set_chalisa, only: [:show, :update, :destroy]

  def index
    @chalisas = Chalisa.all
    render json: @chalisas
  end

  def show
    render json: @chalisa
  end

  def create
    @chalisa = Chalisa.new(chalisa_params)

    if @chalisa.save
      render json: { message: 'Chalisa was successfully created.', chalisa: @chalisa }, status: :created, location: @chalisa
    else
      render json: @chalisa.errors, status: :unprocessable_entity
    end
  end

  def update
    if @chalisa.update(chalisa_params)
      render json: { message: 'Chalisa was successfully updated.', chalisa: @chalisa }
    else
      render json: @chalisa.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @chalisa.destroy
    render json: { message: 'Chalisa was successfully destroyed.' }
  end

  private
  def set_chalisa
    @chalisa = Chalisa.find(params[:id])
  end

  def chalisa_params
    params.require(:chalisa).permit(:title, :lyrics)
  end
end
