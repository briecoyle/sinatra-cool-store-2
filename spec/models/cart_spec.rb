require_relative '../spec_helper'

describe Cart do
  before(:each) do
    @cart = Cart.create
  end

<<<<<<< HEAD
  it 'is created with a default status of pending' do
    expect(@cart.status).to eq('pending')
  end

  it 'knows if its status has changed' do
=======
  it "is created with a default status of pending" do
    expect(@cart.status).to eq('pending')
  end

  it "knows if its status has changed" do
>>>>>>> b238fc58b6ba1ce876b03d426438540876529a44
    @cart.status = 'submitted'

    expect(@cart.status).to eq('submitted')
  end

  describe 'class methods' do

    describe 'total' do
<<<<<<< HEAD
      let(:cart) {Cart.create}
      let(:item) {Item.create(name: 'iPhone', price: 250, inventory: 70)}
      let(:item2) {Item.create(name: 'XBox', price: 200, inventory: 10)}
=======
      let(:cart) { Cart.create }
      let(:item1) { Item.create(name: 'iPhone', price: 250, inventory: 70) }
      let(:item2) { Item.create(name: 'xBox', price: 200, inventory: 10) }
>>>>>>> b238fc58b6ba1ce876b03d426438540876529a44

      it 'returns 0 if there are no items in the cart' do
        expect(cart.total).to eq(0)
      end

      it 'returns the total of the items in the cart' do
<<<<<<< HEAD
        cart.items << item
=======
        cart.items << item1
>>>>>>> b238fc58b6ba1ce876b03d426438540876529a44
        cart.items << item2

        expect(cart.total).to eq(450)
      end
    end
<<<<<<< HEAD


=======
>>>>>>> b238fc58b6ba1ce876b03d426438540876529a44
  end

  describe 'associations' do
    it 'belongs to a user' do
<<<<<<< HEAD
      @cart = Cart.create
      user = User.create(last_name: "Bernardo", email: "cernan@flatironschool.com")
      user.carts << @cart

      expect(@cart.user).to eq(user)
    end

    it 'has many items' do
      item1 = Item.create(name: 'iPhone', price: 250, inventory: 70)
      item2 = Item.create(name: 'XBox', price: 200, inventory: 10)

=======
      cart = Cart.create
      user = User.create(first_name: "Brie", last_name: "Coyle")
      user.carts << cart

      expect(cart.user).to eq(user)
    end

    it "has many items" do
      item1 = Item.create(name: 'iPhone', price: 250, inventory: 70)
      item2 = Item.create(name: 'xBox', price: 200, inventory: 10)
>>>>>>> b238fc58b6ba1ce876b03d426438540876529a44
      @cart.items << item1
      @cart.items << item2

      expect(@cart.items.size).to eq(2)
    end
<<<<<<< HEAD

  end



=======
  end
>>>>>>> b238fc58b6ba1ce876b03d426438540876529a44
end
