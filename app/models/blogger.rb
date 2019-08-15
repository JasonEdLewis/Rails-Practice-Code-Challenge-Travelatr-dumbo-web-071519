class Blogger < ApplicationRecord
    has_many :post
    has_many :destinations, through: :post

    validates :name, presence: true
    validates :age, numericality: {greater_than: 0} 
    validates :bio, length: {minimum:  30}

end
