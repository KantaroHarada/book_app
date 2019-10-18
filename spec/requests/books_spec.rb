require 'rails_helper'

RSpec.describe "static book pages", type: :request do

  # home
  describe "GET #sign up" do
    # 正常なdisplayを返すこと
    it "returns the right display" do
      get signup_path
      expect(response).to be_success
      expect(response).to have_http_status "200"
    end
  end
end