require './lib/coffee_maker'

describe CoffeeMaker do
  it 'should be a coffee maker' do
    expect(subject).to be_a(CoffeeMaker)
  end

  describe '#water_level' do
    it 'should show amount of water in coffee maker' do
      expect(subject.water_level).to eq(0)
    end
  end

  describe '#add_water(amount)' do
    it 'should add water to coffee maker' do
      subject.add_water(6)
      expect(subject.water_level).to eq(6)
    end
    it 'should say You added 6 cups of water' do
      expect(subject.add_water(6)).to eq('You added 6 cups of water')
    end
  end

  describe '#coffee_grinds' do
    it 'should be true if coffee grinds are present' do
      expect(subject.coffee_grinds).to be false
    end
  end

  describe '#add_coffee_grinds' do
    it 'should add coffee grinds to coffee maker' do
      subject.add_coffee_grinds
      expect(subject.coffee_grinds).to be true
    end
  end

  describe '#remove_coffee_grinds' do
    it 'should coffee grinds from the coffee maker' do
      subject.add_coffee_grinds
      subject.remove_coffee_grinds
      expect(subject.coffee_grinds).to be false
    end
  end

  describe '#power' do
    it 'should check if coffee maker is on or off' do
      expect(subject.power).to eq('OFF')
    end
  end

  describe '#power_button' do
    before(:each) do
      subject.power_button
    end
    context 'If coffee maker power is off' do
      it 'should turn coffee maker on' do
        expect(subject.power).to eq('ON')
      end
    end

    context 'If coffee maker power is on' do
      it 'should turn coffee maker off' do
        subject.power_button
        expect(subject.power).to eq('OFF')
      end
    end
  end

  describe '#make_coffee' do
    context 'when power is on and has coffee grinds' do
      it 'should ask me to add water' do
        subject.add_coffee_grinds
        subject.power_button
        expect(subject.make_coffee).to eq('You need to add water')
      end
    end

    context 'when power is on and water is full' do
      it 'should ask me to add coffee grinds' do
        subject.add_water(12)
        subject.power_button
        expect(subject.make_coffee).to eq('You need to add coffee grinds')
      end
    end

    context 'when has coffee grinds and water is full' do
      it 'should ask me to turn power on' do
        subject.add_water(12)
        subject.add_coffee_grinds
        expect(subject.make_coffee).to eq('You need to turn the power on')
      end
    end

    context 'when power is on, has coffee grinds and water is full' do
      before(:each) do
        subject.add_water(12)
        subject.add_coffee_grinds
        subject.power_button
      end
      it 'should make coffee from water' do
        subject.make_coffee
        expect(subject.coffee_level).to eq(12)
      end
      it 'should set water level to 0' do
        subject.make_coffee
        expect(subject.water_level).to eq(0)
      end
      it 'should say how much coffee is made' do
        expect(subject.make_coffee).to eq('You made 12 cups of coffee')
      end
    end

  end


end
