require 'rails_helper'

RSpec.feature "books page", type: :feature do

before do
  @user = FactoryBot.create(:user)
  @book = FactoryBot.create(:book)
end

feature 'signup page' do 
  before do
    visit book_search_path
  end

  it 'title have Sign uP|Book apP' do
    expect(page).to have_title "Sign uP|Book apP"
  end

  # homeにBook searcHを返す
  it "homeにBook searcHを返す" do
      get book_search_path
      expect(page).to have_content "Book searcH"
    end
  end

  it 'ボタンのRegistrate new booK!がある' do
    expect(page).to have_button "Registrate new booK!"
  end
  feature 'books#new,createした時の挙動' do
    before do
      fill_in 'Title',         with: 'hoge'
      fill_in 'Author',        with: 'hogehogehoge'
      fill_in 'Punisher',     with: 'hogehoge'
      fill_in 'Genre', with: 'hogehogehogehoge'
      click_button 'Registrate new booK!'
    end

    it "成功するとメッセージがでる=>'Success!'" do
      expect(page).to have_content "Success!"
    end
  end

end

