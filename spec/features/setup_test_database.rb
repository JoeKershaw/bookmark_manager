require 'pg'
def setup_test_database
  connection = PG.connect(dbname: 'bookmark_manager_test')
  connection.exec('DROP TABLE IF EXISTS bookmarks')
  connection.exec('CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60))')
  connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com')")
  connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com')")
  connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com')")
end
