require 'bookmark'
describe '.all' do
  it 'returns all bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    # Add the test data
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://google.com');")

    bookmarks = Bookmark.all
    expect(bookmarks).to include('http://makersacademy.com')
    expect(bookmarks).to include('http://destroyallsoftware.com')
    expect(bookmarks).to include('http://google.com')
  end
end
