class AddViewCountToPost < ActiveRecord::Migration
  def change
    add_column :posts, :view_count, :int, default: 0
  end
end
