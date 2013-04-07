class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :title
  has_many :line_items
  before_destroy :no_line_item_referenced #hook into object lifecycle

#"validates" is a method
  validates :title, :description, :image_url, :price, presence: true
  validates :price, numericality: {greater_than_or_equal_to:0.01}
  validates :title, uniqueness: true
  validates :image_url, format: {
  	with: %r{\.(gif|jpg|png)$}i,
  	message: 'must be a url for GIF, JPG, or PNG image'
  }

  def self.latest
    Product.order('updated_at').last
  end

  private

  def no_line_item_referenced
    if line_items.empty?
      return true
    else
      errors.add(:base, 'Line Items present!!')
      return false
    end
  end

end

