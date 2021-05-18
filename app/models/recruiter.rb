class Recruiter < ApplicationRecord
  has_many :candidates, through: :interviews
  has_many :skills, through: :recruiter_skills

  validates :first_name, presence: true
  validates :email, presence: true, uniqueness: true
end
