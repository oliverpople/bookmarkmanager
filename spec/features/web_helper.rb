
def create_new_link
  visit('/links/new')
  fill_in :title, with: 'BBC'
  fill_in :URL, with: 'http://www.bbc.co.uk'
  click_button 'Create Link'
end
