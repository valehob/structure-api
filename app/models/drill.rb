class Drill < ApplicationRecord
  has_many :shots
  has_many :runs
end
