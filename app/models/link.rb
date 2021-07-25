require 'securerandom'

class Link < ApplicationRecord
  validates :long_url, presence: true, format: { with: URI.regexp(%w(http https)), message: "format invalid" }
  before_save :set_short_url

  private

  def set_short_url
    self.short_url = SecureRandom.alphanumeric(7)
  end
end
