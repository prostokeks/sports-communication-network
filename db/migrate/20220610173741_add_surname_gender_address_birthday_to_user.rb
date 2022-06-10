class AddSurnameGenderAddressBirthdayToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :last_name, :string
    add_column :users, :gender, :string
    add_column :users, :address, :string
    add_column :users, :birthday, :string
  end
end
