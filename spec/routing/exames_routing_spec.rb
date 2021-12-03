require "rails_helper"

RSpec.describe ExamesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/exames").to route_to("exames#index")
    end

    it "routes to #new" do
      expect(:get => "/exames/new").to route_to("exames#new")
    end

    it "routes to #show" do
      expect(:get => "/exames/1").to route_to("exames#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/exames/1/edit").to route_to("exames#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/exames").to route_to("exames#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/exames/1").to route_to("exames#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/exames/1").to route_to("exames#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/exames/1").to route_to("exames#destroy", :id => "1")
    end
  end
end
