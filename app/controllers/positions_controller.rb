class PositionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_position, only: [:show, :edit, :update, :destroy]

  def index
    @positions = current_user.positions
  end

  def show
  end

  def new
    @position = Position.new
  end

  def edit
  end

  def create
    @position = Position.new(position_params)
    @position.user = current_user
    if @position.save!
      redirect_to @position, notice: "The #{@position.title} position has been successfully created"
    else
      render :new
    end
  end

  def update
    @position.update(position_params)
    redirect_to @position
  end

  def destroy
    @position.destroy
    redirect_to positions_path, notice: "The #{@position.title} position has been successfully deleted"
  end

  private

  def set_position
    @position = Position.find(params[:id])
  end

  def position_params
    params.require(:position).permit(:title, :description, position_skills_attributes: [:position_skills, :attributes])
  end
end
