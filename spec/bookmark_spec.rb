require 'bookmark'
require_relative './features/setup_test_database'

describe Bookmark do

before(:each) do
  setup_test_database
end

  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")
    end
  end
  describe '.create' do
    it 'creates a new bookmark' do
    Bookmark.create(url: 'http://www.testbookmark.com')
    expect(Bookmark.all).to include 'http://www.testbookmark.com'
    end
  end
end
