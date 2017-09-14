class AddPasswordDigestToBabysitters < ActiveRecord::Migration[5.1]
  def change
    add_column :babysitters, :password_digest, :string
  end
end
