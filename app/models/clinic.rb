class Clinic < ApplicationRecord
  validates :description, :title, :offered_at, presence: true
end
