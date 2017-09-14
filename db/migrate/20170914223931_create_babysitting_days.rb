class CreateBabysittingDays < ActiveRecord::Migration[5.1]
  def change
    create_table :babysitting_days do |t|
      t.string :day

      t.timestamps
    end
  end
end
