class Author < ApplicationRecord
    validates :username, presence: true
    validates :user_id, presence: true
    has_many :posts
end
