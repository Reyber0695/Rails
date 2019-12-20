require 'rails_helper'

RSpec.describe ReportsController, type: :controller do

  describe "GET #info" do
    it "Status 200" do
      get :info
      expect(response.status).to eq(200)
    end
  end
end
