class Task < ApplicationRecord
    belongs_to :category
    validates :title, presence: true, uniqueness: true
    validates :description, presence: true
    validates :deadline, presence: true
end
