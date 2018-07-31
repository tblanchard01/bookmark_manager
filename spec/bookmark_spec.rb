require 'bookmark'
describe '.all' do 
    it 'returns all bookmarks' do
    bookmarks = Bookmark.all 
    expect(bookmarks).to include("http://makersacademy.com")
      expect(bookmarks).to include("http://askjeeves.com")
      expect(bookmarks).to include("http://google.com")
    end
  end