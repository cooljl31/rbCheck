# frozen_string_literal: true

RSpec.describe 'Base64' do
  it 'encoding and decoding are inverses of each other' do
    property_of do
      Rantly { sized(30) { string } }
    end.check(1000) do |s|
      puts s
      expect(Base64.decode64(Base64.encode64(s))).to eq(s)
    end
  end
end
