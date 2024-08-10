class AddForeignKeyToFreePosts < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :free_posts, :users
  end
end
