require "rails_helper"

RSpec.describe IventoriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/iventories").to route_to("iventories#index")
    end

    it "routes to #show" do
      expect(:get => "/iventories/1").to route_to("iventories#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/iventories").to route_to("iventories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/iventories/1").to route_to("iventories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/iventories/1").to route_to("iventories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/iventories/1").to route_to("iventories#destroy", :id => "1")
    end
  end
end
