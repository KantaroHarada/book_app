require 'rails_helper'

RSpec.describe BooksController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET # book" do
    it "show the detail" do
      get :show
      expect(response.status).to eq 200
    end
  end

  describe "PATCH #update" do
    it "update the detail" do
      patch :update
      expect(response.status).to eq 200
    end
  end

  describe "GET #search" do
    it "search books" do
      get :search
      expect(response.status).to eq 200
    end
  end

  describe "DELETE #destroy" do
    it "delete the book" do
      delete :destroy
      expect(response.status).to eq 200
    end
  end

  describe "GET #edit_book" do
    it "edit the detail" do
      get :edit
      expect(response.status).to eq 200
    end
  end



end
