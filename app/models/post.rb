class Post < ApplicationRecord
  has_one_attached :thumbnail
  has_rich_text :description

  def as_json(options = {})
    {
        id: id,
        title: title,
        description: description.body
    }
  end
end
