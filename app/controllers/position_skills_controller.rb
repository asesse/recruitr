class PositionSkillsController < ApplicationController
  before_action :set_position, only: [:new, :create]

  def new
    @position_skill = PositionSkill.new
  end

  def create
    @psp = position_skills_params[:skill_id]
    @psp.each do |skill_id|
     next unless skill_id.present?
      PositionSkill.create(skill_id: skill_id, position: @position)
    end
      redirect_to position_path(@position)
  end

  private

  def set_position
    @position = Position.find(params[:position_id])
  end

  def position_skills_params
    params.require(:position_skill).permit(:position_id, skill_id: [])
  end
end
