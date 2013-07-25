require 'test_helper'

class SearchTest < ActionDispatch::IntegrationTest
  test "search for item in database works" do

    visit root_path
    
    link = Link.create(:title => "Test Link", :url => "http://www.testurl.com/")
    
    fill_in 'q', with: 'Link'
    
    click_button 'Search'
    
    save_and_open_page
  end
end
