class AddLikeCountToPost < ActiveRecord::Migration
  def change
    add_column :posts, :like_count, :integer, default: 0
  end
end
