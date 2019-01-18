class Question < ApplicationRecord
  belongs_to :attendee
  belongs_to :workshop
end
