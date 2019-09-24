# frozen_string_literal: true

require 'spec_helper'
require 'repeated_substring'

RSpec.describe 'repeated_substring' do
  let(:repeated_substring) { RepeatedSubstring.new }

  it 'finds the most repeated substring for every line of a file' do
    expect(repeated_substring.find_repeated_substring_file('data/sample.txt')).to eq(%w[aqca NONE xf nr wmfl])
  end
end
