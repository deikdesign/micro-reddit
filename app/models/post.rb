class Post < ApplicationRecord
    validates :title, presence: true
    validates :author_id, presence: true
    validates :post_id, presence: true
    belongs_to :author
    has_many :comment
end
