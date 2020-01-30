# frozen_string_literal: true

require 'title_this'

describe TitleThis do
  it 'works on Strings' do
    string = 'a few words'
    expect(TitleThis.string(string)).to eql('A Few Words')
  end

  it 'works on Arrays' do
    array = %w(here are words)
    expect(TitleThis.array(array)).to eql('Here Are Words')
  end

  it 'works on Hashes' do
    hash = { sentence: 'here are some more words' }
    expect(TitleThis.hash(hash, :sentence)).to eql('Here Are Some More Words')
  end

  it 'returns nil on Hash if key not found' do
    hash = { sentence: 'here are some words' }
    expect(TitleThis.hash(hash, :no_key)).to be_nil
  end
end