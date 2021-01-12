class Post < ApplicationRecord
    validates :title, presence: true
    validates :author_id, presence: true
    validates :user_id, presence: true
    belongs_to :author
end
