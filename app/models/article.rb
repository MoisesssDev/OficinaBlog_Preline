class Article < ApplicationRecord
  has_one_attached :header_image
  has_rich_text :content
end
