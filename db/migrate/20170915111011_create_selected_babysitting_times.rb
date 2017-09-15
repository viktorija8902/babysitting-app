class CreateSelectedBabysittingTimes < ActiveRecord::Migration[5.1]
  def change
    create_table :selected_babysitting_times do |t|
      t.integer :babysitting_day_id
      t.integer :babysitting_time_id
      t.integer :babysitter_id
      t.integer :family_id

      t.timestamps
    end
  end
end
