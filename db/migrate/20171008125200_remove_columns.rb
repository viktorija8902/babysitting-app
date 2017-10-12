class RemoveColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :babysitters, :email, :string
    remove_column :babysitters, :password_digest, :string
    remove_column :families, :email, :string
    remove_column :families, :password_digest, :string
  end
end
