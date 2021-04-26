class Schedule < ApplicationRecord
  validates :title, presence: true
  validates :start_day, presence: true
  validates :finish_day, presence: true
  validate :not_before_today

  def not_before_today
    unless finish_day == nil
      errors.add(:finish_day, 'は今日以降の日付で選択してください') if finish_day < Date.today
    end
  end
end
