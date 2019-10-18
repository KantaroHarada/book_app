require 'rails_helper'

RSpec.feature "user page", type: :feature do

before do
  @user = FactoryBot.create(:user)
end

feature 'signup page' do 
  before do
    visit signup_path
  end

  it 'title have Sign uP|Book apP' do
    expect(page).to have_title "Sign uP|Book apP"
  end

  # homeにWelcome to your worlD!を返す
  it "homeにWelcome to your worlD!を返す" do
      get signup_path
      expect(page).to have_content "Welcome to your worlD!"
    end
  end

  it 'ボタンのCreate my accountがある' do
    expect(page).to have_button "Create my account"
  end
  feature 'new createした時の挙動' do
    before do
      fill_in 'Name',         with: 'hoge'
      fill_in 'Email',        with: 'hoge@hoge.com'
      fill_in 'Password',     with: 'hogehoge'
      fill_in 'Confirmation', with: 'hogehoge'
      click_button 'Create my account'
    end

    it 'root_pathに遷移する' do
      expect(current_path).to eq user_path
    end

    it "成功するとメッセージがでる=>'Let's open your worlD'" do
      expect(page).to have_content "Let's open your worlD"
    end
  end

end

feature 'new createに失敗した時の挙動テスト' do
  before do
    fill_in 'Name',         with: 'hoge'
    fill_in 'Email',        with: 'test@hoge.com'
    fill_in 'Password',     with: 'hogehoge'
    fill_in 'Confirmation', with: 'fugafuga'
    click_button 'Create my account'
  end

  it 'sign_pathに遷移する' do
    expect(current_path).to eq signup_path
  end
  

  it "passwordが違うとエラーメッセージがでる" do
    expect(page).to have_content "The form contains 1 error."
    expect(page).to have_content  'doesn\'t match'
  end
end

