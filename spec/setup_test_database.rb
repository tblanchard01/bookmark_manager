require 'pg'
p 'Setting up test database...'
connection = PG.connect(dbnamme: 'bookmark_manager_test')
connection.exec("TRUNCATE bookmarks;")
