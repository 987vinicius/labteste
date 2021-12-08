require 'rails_helper'

RSpec.describe "GroupLabs", type: :request do
  describe "GET /group_labs" do
    it "works! (now write some real specs)" do
      get group_labs_path
      expect(response).to have_http_status(200)
    end
  end
end
