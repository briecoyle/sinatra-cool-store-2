require_relative '../spec_helper'

describe User do

  it 'has a first name, last name, and email' do
    user = User.new(first_name: "Brie", last_name: "Coyle", email: "brie.coyle@gmail.com")

    expect(user).to be_valid
  end

  it 'is invalid without a first name' do
    user = User.create(last_name: "Coyle", email: "brie.coyle@gmail.com")

    expect(user).to_not be_valid
  end

  it 'is invalid without a last name' do
    user = User.create(first_name: "Brie", email: "brie.coyle@gmail.com")

    expect(user).to_not be_valid
  end

  it 'is invalid without an email' do
    user = User.create(last_name: "Bernardo", first_name: "Cernan")

    expect(user).to_not be_valid
  end

  it 'is invalid with a duplicate email' do
    user1 = User.create(first_name: "Cernan", last_name: "Bernardo", email: "cernan@flatironschool.com")
    user2 = User.create(first_name: "Ashley", last_name: "Jones", email: "cernan@flatironschool.com")

    expect(user2).to_not be_valid
  end

  it "knows its full name" do
    user = User.create(first_name: "Brie", last_name: "Coyle", email: "brie.coyle@gmail.com")

    expect(user.full_name).to eq("Brie Coyle")
  end

  it "is created with a default status of non-premium" do
    user = User.create(first_name: "Brie", last_name: "Coyle", email: "brie.coyle@gmail.com")

    expect(user.status).to eq("Non-Premium")
  end

  describe 'associations' do
    it 'has many carts' do
      user = User.create(first_name: "Brie", last_name: "Coyle", email: "brie.coyle@gmail.com")
      cart1 = Cart.create()
      cart2 = Cart.create()
      user.carts << cart1
      user.carts << cart2
    end

    it 'has many items'
  end

end
