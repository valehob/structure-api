class Progress < ApplicationRecord
  belongs_to :level
  belongs_to :topic
  belongs_to :user
end
