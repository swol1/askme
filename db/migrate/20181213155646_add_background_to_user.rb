class AddBackgroundToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_background, :string
  end
end
