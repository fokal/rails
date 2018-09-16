class Tag < ApplicationRecord
    has_many :streams
    has_many :users
    has_many :images
end
