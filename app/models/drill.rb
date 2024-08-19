class Drill < ApplicationRecord
  has_many :shots
  has_many :runs
  belongs_to :level
  belongs_to :topic
end
