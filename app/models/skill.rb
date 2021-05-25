class Skill < ApplicationRecord
  has_many :positions, through: :position_skills
  has_many :candidates, through: :candidate_skills
  has_many :recruiters, through: :recruiter_skills

  validates :name, inclusion: { in: ["backend", "frontend", "engineer", "mobile", "marketing", "intern", "sales", "communication"] }
end
