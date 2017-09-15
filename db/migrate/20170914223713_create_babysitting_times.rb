class CreateBabysittingTimes < ActiveRecord::Migration[5.1]
  def change
    create_table :babysitting_times do |t|
      t.string :start_time
      t.string :end_time

      t.timestamps
    end
  end
end
