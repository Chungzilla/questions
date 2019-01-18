class Facilitator < ApplicationRecord
    has_one :workshop
    has_many :questions, :through => :workshop
end
