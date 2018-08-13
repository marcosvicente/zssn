require 'rails_helper'

RSpec.describe "Iventories", type: :request do
  describe "GET /iventories" do
    it "works! (now write some real specs)" do
      get iventories_path
      expect(response).to have_http_status(200)
    end
  end
end
