# frozen_string_literal: true

RSpec.describe 'Array' do
  it 'uniq is idempotent' do
    property_of do
      Rantly { array { Rantly { i = integer; guard i >= 0; i } } }
    end.check { |a|
      expect(a.uniq.uniq).to eq(a.uniq)
    }
  end
end
