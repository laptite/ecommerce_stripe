class Product < ActiveRecord::Base

  def full_description
    "#{self.title} #{self.subtitle}"
  end

  def price_in_cents
    (self.price * 100).to_i
  end

  def image_name
    title.parameterize.gsub('-monthly', '')
  end
  def thumbnail_image_name
    "product-#{image_name}.png"
  end

  def header_image_name
    "header-#{image_name}.png"
  end
end
