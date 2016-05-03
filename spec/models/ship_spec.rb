require 'rails_helper'

RSpec.describe Ship do

  describe "initialize ship" do
    let(:position)  { ["A", 5] }
  	let(:ship)  { Ship.new(position.first, position.last) }

    it "has size" do
    	expect(ship.size).not_to be nil
    end

    it "has position" do
      expect(ship.col).to eq position.last
    end
  end

  describe "shoot ship" do
    let(:ship)  { Ship.new("B", 5) }

    it "hits ship" do
      expect(Ship.shoot(ship, "B", 6)).to be true
    end
    it "misses ship" do
      expect(Ship.shoot(ship, "B", 10)).to be false
    end

  end
end
