require "sample"

RSpec.describe 'sample test' do
  it '正しく値を加算できているか' do
    expect(num_plus(1, 2)).to eq 3
  end
end
