class Tag < ApplicationRecord
    has_many :taggables, dependent: :destroy
    has_many :post, through: :taggables
end
