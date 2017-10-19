
def create_new_link
  visit('/links/new')
  fill_in :title, with: 'BBC'
  fill_in :url, with: 'http://www.bbc.co.uk'
  fill_in :tags, with: 'News'
  click_button 'Create Link'
end
