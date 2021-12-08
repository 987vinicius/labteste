require "rails_helper"

RSpec.describe GroupLabsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/group_labs").to route_to("group_labs#index")
    end

    it "routes to #new" do
      expect(:get => "/group_labs/new").to route_to("group_labs#new")
    end

    it "routes to #show" do
      expect(:get => "/group_labs/1").to route_to("group_labs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/group_labs/1/edit").to route_to("group_labs#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/group_labs").to route_to("group_labs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/group_labs/1").to route_to("group_labs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/group_labs/1").to route_to("group_labs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/group_labs/1").to route_to("group_labs#destroy", :id => "1")
    end
  end
end
