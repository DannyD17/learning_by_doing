require_relative '../../lib/cash_register_tdd'

describe CashRegister do
  describe '#total' do
    it 'returns 0.00' do
      expect(subject.total).to eq(0.00)
    end
  end

  describe 'purchase(amount)' do
    before(:each) do
      subject.purchase(3.78)
    end

    it 'add a single amount to the total' do
      expect(subject.total).to eq(3.78)
    end

    it 'adds multiple amounts to total' do
      subject.purchase(5.22)
      expect(subject.total).to eq(9.00)
    end
  end

  describe '#payment(amount)' do
    before(:each) do
      subject.purchase(3.78)
    end

    it 'subtracts the amount from the total' do
      subject.payment(3.78)
      expect(subject.total).to eq(0.00)
    end

    context 'for payment is greater than total' do
      it 'should set total to 0.00' do
        subject.payment(5.00)
        expect(subject.total).to eq(0.00)
      end

      it 'should print change due' do
        expect(subject.payment(5.00)).to eq ('Your change is $1.22')
      end
    end

    context 'for payment less than total' do
      it 'should subtract payment from total' do
        subject.payment(1.78)
        expect(subject.total).to eq(2.00)
      end
      it 'should print Your new total is $(new total)' do
        expect(subject.payment(1.78)).to eq('Your new total is $2.00')
      end
    end
  end
end
