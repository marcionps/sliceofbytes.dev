class Category < ApplicationRecord
    has_many :categorizable, dependent: :destroy
    has_many :post, through: :categorizable
end
