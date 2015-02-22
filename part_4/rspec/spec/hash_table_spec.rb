require '../../part_3/2_hash'

describe HashTable do
  subject { HashTable.new }

  describe '#[]' do
    it { expect(subject[:a]).to be nil }
  end

  describe '#empty?' do
    it { expect(subject.empty?).to be true }
  end

  describe '#size' do
    it { expect(subject.size).not_to be 1 }
  end

  describe '#keys' do
    context 'when nothing is added yet' do
      it { expect(subject.keys).to eq [] }
    end
  end

  describe 'not empty Hash' do
    before do
      subject[:a] = 'a'
      subject[:b] = 'b'
    end
    it { expect(subject.size).not_to be 0 }
    it { expect(subject.empty?).not_to be true }
    it { expect(subject.keys).not_to be_empty }
    it { expect(subject.values).not_to be_empty }
  end

  describe '#clear #size' do
    before do
      subject[:a] = 'a'
      subject[:b] = 'b'
    end
    it { expect(subject.size).to be 2 }
    it 'clear a hash' do
      subject.clear
      expect(subject.empty?).to be true
    end
  end
end
