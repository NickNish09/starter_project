class Post < ApplicationRecord
  has_one_attached :thumbnail
  has_rich_text :description
end
