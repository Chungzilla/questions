class Workshop < ApplicationRecord
  belongs_to :facilitator
  has_many :questions
  has_many :attendees, :through => :questions
end
