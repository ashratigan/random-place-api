require 'rails_helper'

RSpec.describe "SavedPlaces", type: :request do
  describe "GET /saved_places" do
    it "works! (now write some real specs)" do
      get saved_places_path
      expect(response).to have_http_status(200)
    end
  end
end
