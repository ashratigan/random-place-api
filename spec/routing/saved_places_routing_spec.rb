require "rails_helper"

RSpec.describe SavedPlacesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/saved_places").to route_to("saved_places#index")
    end


    it "routes to #show" do
      expect(:get => "/saved_places/1").to route_to("saved_places#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/saved_places").to route_to("saved_places#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/saved_places/1").to route_to("saved_places#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/saved_places/1").to route_to("saved_places#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/saved_places/1").to route_to("saved_places#destroy", :id => "1")
    end

  end
end
