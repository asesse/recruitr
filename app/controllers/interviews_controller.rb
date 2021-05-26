class InterviewsController < ApplicationController
  before_action :set_candidate, only: [:new, :create]

  def show
    @interview = Interview.find(params[:id])
    @candidate = @interview.candidate
  end

  def new
    @interview = Interview.new
  end

  def create
    @int = interviews_params[:recruiter_id]
    @int.each do |recruiter_id|
     next unless recruiter_id.present?
      Interview.create(recruiter_id: recruiter_id, candidate: @candidate)
    end
      redirect_to candidate_path(@candidate)
  end

  private

  def set_candidate
    @candidate = Candidate.find(params[:candidate_id])
  end

  def interviews_params
    params.require(:interview).permit(:candidate_id, :date, :time, recruiter_id: [])
  end
end
