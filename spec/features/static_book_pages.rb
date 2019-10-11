require 'rails_helper'

RSpec.feature "StaticBookPages", type: :feature do
  describe "Home page" do
    before do
      visit root_path   # 名前付きルートを使用
    end

    # HomeページにStaticPages#homeと表示されていること
    it "should have the content 'home'" do
      expect(page).to have_content "home"
    end

    # タイトルが正しく表示されていること
    it "should have the right title" do
      expect(page).to have_title full_title('')
    end
  end
end