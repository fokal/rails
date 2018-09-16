class Image < ApplicationRecord
  belongs_to :user
  has_one :metadata
  has_many :colors
  has_one :stat
  has_one :location

  def to_builder
    Jbuilder.new do |image|
        image.shortcode id
    end
  end
end
