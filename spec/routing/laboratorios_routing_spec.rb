require "rails_helper"

RSpec.describe LaboratoriosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/laboratorios").to route_to("laboratorios#index")
    end

    it "routes to #new" do
      expect(:get => "/laboratorios/new").to route_to("laboratorios#new")
    end

    it "routes to #show" do
      expect(:get => "/laboratorios/1").to route_to("laboratorios#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/laboratorios/1/edit").to route_to("laboratorios#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/laboratorios").to route_to("laboratorios#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/laboratorios/1").to route_to("laboratorios#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/laboratorios/1").to route_to("laboratorios#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/laboratorios/1").to route_to("laboratorios#destroy", :id => "1")
    end
  end
end
