class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :items

  def total
    self.items.inject(0) { |total, item| total += item.price }
  end
end
