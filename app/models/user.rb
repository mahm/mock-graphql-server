class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :todos, dependent: :destroy
  has_many :albums, dependent: :destroy
end
