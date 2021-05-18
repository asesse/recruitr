class Skill < ApplicationRecord
  has_many :positions, through: :position_skills
  has_many :candidates, through: :candidate_skills
  has_many :recruiter, through: :recruiter_skills
end
