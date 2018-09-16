class User < ApplicationRecord
  has_many :images
  has_many :streams

  def to_builder
    Jbuilder.new do |user|
        user.name name
        user.username username
        user.bio bio
        user.url url
        user.twitter twitter
        user.instagram instagram
        user.location location
        user.admin admin
        user.featured featured
        user.images images.to_builder
        json.array! user.images.to_a
    end
  end
end
