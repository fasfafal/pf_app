class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :title
      t.text :body
      t.string :avatar

      t.timestamps
    end
  end
end
