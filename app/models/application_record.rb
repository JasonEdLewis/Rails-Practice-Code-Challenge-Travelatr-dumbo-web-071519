class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def featured_post
    self.post.find do |p|
      p.likes.max
      return p.title
    end
end

end
