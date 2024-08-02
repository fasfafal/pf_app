class CreateFreePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :free_posts do |t|
      t.integer :user_id
      t.string :title
      t.string :body
      t.binary :icon

      t.timestamps
    end
  end
end
