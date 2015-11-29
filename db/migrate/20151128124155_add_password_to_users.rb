class AddPasswordToUsers < ActiveRecord::Migration
  def change
    add_column :users, :enccrypted_password, :string
  end
end
