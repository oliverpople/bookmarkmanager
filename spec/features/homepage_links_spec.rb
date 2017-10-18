
feature 'View links' do
  scenario 'I can see existing links on the homepage' do
    Link.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    visit('/links')

    within 'ul#links' do
      expect(page).to have_content 'Makers Academy'
    end

  end
end
