class AddDetailToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :detail, :text
  end
end
