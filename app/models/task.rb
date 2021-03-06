class Task < ApplicationRecord
    belongs_to :category
    validates :title, presence: true, uniqueness: true
    validates :description, presence: true
    validates :deadline, presence: true

    validates :status, inclusion: { in: ['not-started', 'in-progress', 'complete'] }

    STATUS_OPTIONS = [
      ['Not started', 'not-started'],
      ['In progress', 'in-progress'],
      ['Complete', 'complete']
    ]

    def complete?
      status == 'complete' 
    end

    def in_progress?
      status == 'in-progress'
    end

    def not_started?
      status == 'not-started'
    end


end