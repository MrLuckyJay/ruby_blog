class Article < ApplicationRecord
    has_many :comments, dependent: :destroy


    validates :title, presence: true,
              length: {minimum:3, maximum:250}

    validates :text, presence: true,
              length: {minimum:3, }
end
