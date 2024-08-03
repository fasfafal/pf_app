class AddBloodTypeToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :blood_type, :integer
  end
end
