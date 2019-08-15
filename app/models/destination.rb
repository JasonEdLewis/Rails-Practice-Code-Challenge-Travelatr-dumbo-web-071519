class Destination < ApplicationRecord
    has_many :post
    has_many :bloggers, through: :post


    def last_five
        i = 0
        post = []
        while i <= 5
           post << self.post
        end
        i += 1
        return post
    end

end
