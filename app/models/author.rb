class Author < ApplicationRecord
    validates :username, presence: true
    validates :author_id, presence: true
    has_many :posts
end
