class Schedule < ApplicationRecord
  validates :title,presence: true
  validates :title, length:{maximum: 20}
  validates :memo, length:{maximum: 500}
  validate :date_check
  
  def date_check
    if close_day < start_day
          errors.add(:close_day, 'は、開始日以降の日付としてください。')
    end
  end
end
