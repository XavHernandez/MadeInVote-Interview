class Link < ApplicationRecord
   validates :long_url, presence: true, format: { with: URI.regexp(%w(http https)), message: "format invalid" }
end
