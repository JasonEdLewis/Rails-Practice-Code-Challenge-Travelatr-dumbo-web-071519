class Blogger < ApplicationRecord
    has_many :post
    has_many :destinations, through: :post

end
