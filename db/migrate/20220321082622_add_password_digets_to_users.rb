class AddPasswordDigetsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :password_digets, :string
  end
end
