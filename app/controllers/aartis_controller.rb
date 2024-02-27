class AartisController < ApplicationController
  before_action :set_aarti, only: [:show, :update, :destroy]

  def index
    @aartis = Aarti.all
    render json: @aartis
  end

  def show
    render json: @aarti
  end

  def create
    @aarti = Aarti.new(aarti_params)

    if @aarti.save
      render json: { message: 'Aarti was successfully created.', aarti: @aarti }, status: :created, location: @aarti
    else
      render json: @aarti.errors, status: :unprocessable_entity
    end
  end

  def update
    if @aarti.update(aarti_params)
      render json: { message: 'Aarti was successfully updated.', aarti: @aarti }
    else
      render json: @aarti.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @aarti.destroy
    render json: { message: 'Aarti was successfully destroyed.' }
  end

  private
  def set_aarti
    @aarti = Aarti.find(params[:id])
  end

  def aarti_params
    params.require(:aarti).permit(:title, lyrics: [])
  end
end
