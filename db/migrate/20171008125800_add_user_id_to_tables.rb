class AddUserIdToTables < ActiveRecord::Migration[5.1]
  def change
    add_column :babysitters, :user_id, :integer
    add_column :families, :user_id, :integer
  end
end
