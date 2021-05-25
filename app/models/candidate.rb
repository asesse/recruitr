class Candidate < ApplicationRecord
  belongs_to :position
  has_many :candidate_skills
  has_many :skills, through: :candidate_skills
  has_many :interviews
  has_many :recruiters, through: :interviews


  validates :first_name, presence: true
  validates :email, presence: true, uniqueness: true
end
