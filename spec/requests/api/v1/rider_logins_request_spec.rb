require 'rails_helper'

RSpec.describe "Api::V1::RiderLogins", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/api/v1/rider_logins/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/api/v1/rider_logins/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/api/v1/rider_logins/update"
      expect(response).to have_http_status(:success)
    end
  end

end
