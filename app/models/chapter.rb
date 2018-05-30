class Chapter < ApplicationRecord
    belongs_to :tutorial
    has_many :questions
end
