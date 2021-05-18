class Position < ApplicationRecord
  belongs_to :user
  has_many :skills, through: :position_skills

  validates :title, presence: true
end
