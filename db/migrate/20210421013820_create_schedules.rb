class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :title
      t.string :start_day
      t.string :finish_day
      t.string :all_day

      t.timestamps
    end
  end
end
