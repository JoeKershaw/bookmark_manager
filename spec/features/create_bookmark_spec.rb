feature "add a new bookmark" do
  scenario "User can create a new bookmark" do
    visit ('/bookmarks')
    click_button 'Add new bookmark'
    fill_in :url, with: 'http://www.tesco.com'
    click_button 'Add'
  end
end
