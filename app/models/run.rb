class Run < ApplicationRecord
  belongs_to :drill
  has_many :trys
end
