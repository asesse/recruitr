class Recruiter < ApplicationRecord
  has_many :interviews
  has_many :candidates, through: :interviews
  has_many :recruiter_skills, dependent: :destroy
  has_many :skills, through: :recruiter_skills

  validates :first_name, presence: true
  validates :email, presence: true, uniqueness: true
end
