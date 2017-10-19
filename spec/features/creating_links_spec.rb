  feature 'Creating new links' do
  scenario 'I want to save a new link' do
    create_new_link
    expect(page).to have_content 'http://www.bbc.co.uk'
  end
end

feature 'Adding tags' do

  scenario 'I can add a single tag to a new link' do
    visit '/links/new'
    fill_in 'url',   with: 'http://www.makersacademy.com/'
    fill_in 'title', with: 'Makers Academy'
    fill_in 'tags',  with: 'education'
    click_button 'Create Link'
    link = Link.first
    expect(link.tags.map(&:name)).to include('education')
  end

end
