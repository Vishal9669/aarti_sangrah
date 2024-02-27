class JyotirlingsController < ApplicationController
  before_action :set_jyotirling, only: [:show, :update, :destroy]

  def index
    @jyotirlings = Jyotirling.all
    render json: @jyotirlings
  end

  def show
    render json: @jyotirling
  end

  def create
    @jyotirling = Jyotirling.new(jyotirling_params)

    if @jyotirling.save
      render json: { message: 'Jyotirling was successfully created.', jyotirling: @jyotirling }, status: :created, location: @jyotirling
    else
      render json: @jyotirling.errors, status: :unprocessable_entity
    end
  end

  def update
    if @jyotirling.update(jyotirling_params)
      render json: { message: 'Jyotirling was successfully updated.', jyotirling: @jyotirling }
    else
      render json: @jyotirling.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @jyotirling.destroy
    render json: { message: 'Jyotirling was successfully destroyed.' }
  end

  private
  def set_jyotirling
    @jyotirling = Jyotirling.find(params[:id])
  end

  def jyotirling_params
    params.require(:jyotirling).permit(:title, location: [])
  end
end
