require 'rails_helper'

RSpec.describe "Laboratorios", type: :request do
  describe "GET /laboratorios" do
    it "works! (now write some real specs)" do
      get laboratorios_path
      expect(response).to have_http_status(200)
    end
  end
end
