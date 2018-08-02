require 'bookmark'
describe '.all' do
  it 'returns all bookmarks' do
    add_bookmarks   
    bookmarks = Bookmark.all
    expect(bookmarks).to include('http://makersacademy.com')
    expect(bookmarks).to include('http://destroyallsoftware.com')
    expect(bookmarks).to include('http://google.com')
  end
end
