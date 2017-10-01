RSpec.describe 'Array' do
  it 'even numbers' do
    property_of {
      Rantly {
        array { integer }
      }.check { |i| expect(i).to all(be_even)  }
    }
  end
end
