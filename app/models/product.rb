class Product < ActiveRecord::Base

  def full_description
    "#{self.title} #{self.subtitle}"
  end

  def price_in_cents
    (self.price * 100).to_i
  end

  def thumbnail_image_name
    name = title.parameterize.gsub('-monthly', '')
    "product-#{name}.png"
  end
end
