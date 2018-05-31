class Tag < ApplicationRecord
    has_many :tutorials, through: :tags_tutorials
    has_many :tags_tutorials, dependent: :destroy
end
