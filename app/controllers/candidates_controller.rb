class CandidatesController < ApplicationController
  before_action :set_position, only: [:index, :new, :create]

  def show
    @candidate = Candidate.find(params[:id])
    @position = @candidate.position
  end

  def new
    @candidate = Candidate.new
  end

  def create
    @candidate = Candidate.new(candidate_params)
    @candidate.position = @position
    if @candidate.save
      redirect_to position_path(@position)
    else
      render :new
    end
  end

  def destroy
    @candidate = Candidate.find(params[:id])
    @position = @candidate.position
    @candidate.destroy
    redirect_to position_path(@position), notice: "#{@candidate.first_name} has been successfully deleted"
  end

  private

  def set_position
    @position = Position.find(params[:position_id])
  end

  def candidate_params
    params.require(:candidate).permit(:first_name, :email, :linkedin, :angellist, :date)
  end
end
