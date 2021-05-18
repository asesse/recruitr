class Interview < ApplicationRecord
  belongs_to :recruiter
  belongs_to :candidate
end
