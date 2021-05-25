class CandidatesController < ApplicationController
  before_action :set_position, only: [:new, :create, :destroy]

  def index
    @candidates = Candidate.all
  end

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

  # def destroy
    # @candidate.destroy
  # end

  private

  def set_position
    @position = Position.find(params[:position_id])
  end

  def candidate_params
    params.require(:candidate).permit(:first_name, :email, :linkedin, :angellist, :date)
  end
end
