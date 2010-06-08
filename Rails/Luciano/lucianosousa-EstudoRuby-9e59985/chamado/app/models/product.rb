class Product < ActiveRecord::Base
  validates_presence_of :title, :description, :image_url
  validates_uniqueness_of :title
  validates_format_of :image_url,
                      :with => %r{\.(gif||jpg||png)$}i,
                      :message => "Url's somente para imagens do tipo gif, jpg ou png."

  protected
  def validate
    errors.add(:price, "should be at least 0.01") if price.nil? || price < 0.01
  end
end
