class Post < ActiveRecord::Base

	def plus_one_view_count
		self.view_count += 1
		Post.update(self.id, view_count: self.view_count)
	end

	def plus_one_like_count
		self.like_count += 1
		Post.update(self.id, like_count: self.like_count)
	end
end
