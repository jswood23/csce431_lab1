# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'J.K. Rowling', price: 6.98, published: 1997-06-26)
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without an author' do
    subject.title = 'harry potter'
    subject.author = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a price' do
    subject.author = 'J.K. Rowling'
    subject.price = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a publishing date' do
    subject.price = 6.98
    subject.published = nil
    expect(subject).not_to be_valid
  end
end
