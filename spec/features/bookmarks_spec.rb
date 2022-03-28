feature 'Viewing bookmarks' do
    scenario 'User clicks on a bookmark link that shows list of urls' do 
        visit('/bookmarks')
        expect(page).to have_content "https://www.airbnb.com/cairo-egypt/stays"
        expect(page).to have_content "https://miro.com/app/board/uXjVOBy_qng=/"
        expect(page).to have_content "https://www.calculator.net/"
    end 
end 