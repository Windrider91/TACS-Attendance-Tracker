class AddDuesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :dues, :boolean, default: false
  end
end
