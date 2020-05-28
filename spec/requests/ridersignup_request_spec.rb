require 'rails_helper'

RSpec.describe "Ridersignups", type: :request do

  describe "GET /create" do
    it "returns http success" do
      get "/ridersignup/create"
      expect(response).to have_http_status(:success)
    end
  end

end
