require_relative '../spec_helper'

describe Item do
<<<<<<< HEAD

  it 'has a name, price, and inventory'
  it 'is invalid without a name'
  it 'is invalid without a price'
  it 'is invalid without an inventory'

=======
  it "has a name, price, and inventory"

  it 'is invalid without a name'
  it 'is invalid without a price'
  it 'is invalid without a inventory'
>>>>>>> b238fc58b6ba1ce876b03d426438540876529a44

  describe 'associations' do
    it 'belongs to a cart' do
      cart = Cart.create
<<<<<<< HEAD
      item1 = Item.create(name: 'iPhone', price: 250, inventory: 70)
      cart.items << item1

      expect(item1.cart).to eq(cart)

=======
      
>>>>>>> b238fc58b6ba1ce876b03d426438540876529a44
    end
  end
end
