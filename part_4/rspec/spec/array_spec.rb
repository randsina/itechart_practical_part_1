require '../../part_3/3_custom_array_filters'

describe Array do
  subject { ['a', 1, 'b', 300, 'x', 'q', 63, 122, 181, 'z', 0.83, 0.11] }

  describe '#even' do
    it { expect(subject.even).to eq [300, 122] }
  end

  describe '#odd' do
    it { expect(subject.odd).to eq [1, 63, 181] }
  end

  describe '#under' do
    it { expect(subject.under(100)).to eq [1, 63] }
  end

  describe '#over' do
    it { expect(subject.over(100)).to eq [300, 122, 181] }
  end

  describe '#in_range' do
    it { expect(subject.in_range(100...200)).to eq [122, 181] }
  end

  context 'when invokes a few methods' do
    it { expect(subject.over(100).odd).to eq [181] }
  end
end
