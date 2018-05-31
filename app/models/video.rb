class Video < ApplicationRecord
    belongs_to :tutorial
    has_many :questions
end
