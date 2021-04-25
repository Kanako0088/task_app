class ChangeDayToSchedules < ActiveRecord::Migration[6.1]
  def up
    change_column :schedules, :start_day, :datetime
    change_column :schedules, :finish_day, :datetime
  end
end
