class ChangeDatatypeStatusOfTasks < ActiveRecord::Migration[6.1]
  def up
    change_column :schedules, :start_day, :date
    change_column :schedules, :finish_day, :date
  end
end
