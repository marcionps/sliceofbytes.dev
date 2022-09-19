class Post < ApplicationRecord
    has_many :taggables, dependent: :destroy
    has_many :tags, through: :taggables

    has_many :categorizable, dependent: :destroy
    has_many :categories, through: :categorizable

    validates :title, presence: true, allow_blank: false

    enum :status, { draft: 0, published: 1, archived: 2, trashed: 3 }, suffix: true
    enum :visibility, { public: 0, private: 1 }, suffix: true
end
