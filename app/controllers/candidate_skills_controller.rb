class CandidateSkillsController < ApplicationController
    before_action :set_candidate, only: [:new, :create]

  def new
    @candidate_skill = CandidateSkill.new
  end

  def create
    @csp = candidate_skills_params[:skill_id]
    @psp.each do |skill_id|
     next unless skill_id.present?
      CandidateSkill.create(skill_id: skill_id, candidate: @candidate)
    end
      redirect_to candidate_path(@candidate)
  end

  private

  def set_candidate
    @candidate = Candidate.find(params[:candidate_id])
  end

  def candidate_skills_params
    params.require(:candidate_skill).permit(:candidate_id, skill_id: [])
  end
end
