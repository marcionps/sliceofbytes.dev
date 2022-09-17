class Post < ApplicationRecord
    has_many :taggables, dependent: destroy
    has_many :tags, through: taggables

    has_many :categorizable, dependent: destroy
    has_many :categories, through: categorizable

    validates :title, presence: true, allow_blank: false

    enum :status, { draft: 0, published: 1, archived: 2, trashed: 3 }, suffix: true
    enum :visibility, { public: 0, private: 1 }, suffix: true

    def reading_time
#        words_per_minute = 180
#
#        words = self.content.split.size;
#        minutes = ( words / words_per_minute ).floor
#        minutes_label = minutes === 1 ? " minute" : " minutes"
#        minutes > 0 ? "#{minutes} #{minutes_label} read" : "less than 1 minute read"
    end
end
