require 'rails_helper'

RSpec.describe "Exames", type: :request do
  describe "GET /exames" do
    it "works! (now write some real specs)" do
      get exames_path
      expect(response).to have_http_status(200)
    end
  end
end
