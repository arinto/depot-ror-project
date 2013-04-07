class Cart < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :line_items, dependent: :destroy #has_many: declaring relationship, dependent: :destroy -> when you delete a cart, you also delete the line items dependent on it
end
