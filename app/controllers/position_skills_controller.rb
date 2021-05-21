class PositionSkillsController < ApplicationController
  before_action :set_position, only: [:new, :create]

  def new
    @position_skill = PositionSkill.new
  end

  def create
    # @position_skill = PositionSkill.new(position_skills_params)
    # @position_skill.position_id = params[:position_id]
    # @position_skill.skill_id = params[:skill_id]
    # @skill = @position_skill.skill
    @psp = position_skills_params[:skill_id]
    @psp.each do |skill_id|
     next unless skill_id.present?
      PositionSkill.create(skill_id: skill_id, position: @position)
    end
      #if @position_skill.save
      #
      #else
      #  render :new
      #end
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
