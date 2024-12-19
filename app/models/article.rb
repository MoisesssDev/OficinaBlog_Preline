class Article < ApplicationRecord
  has_one_attached :article_image
  has_rich_text :content
end
