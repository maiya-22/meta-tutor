class Question < ApplicationRecord
    belongs_to :tutorial
    has_many :answers, dependent: :destroy
    has_many :comments, dependent: :destroy
    belongs_to :user
end
 